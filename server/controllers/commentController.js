import User from '../models/userModel.js';
import Product from '../models/productModel.js';
import Rating from '../models/ratingModel.js';
import Event from '../models/eventModel.js';
import { Op } from 'sequelize';

const getProductCommentsById = async (req, res) => {
    try {
        const productId = req.params.id;

        if (!productId) {
            return res.status(400).json({ message: 'Netinkamas produkto ID' });
        }

        const product = await Product.findOne({ where: { id: productId } });

        if (!product) {
            return res.status(404).json({ message: 'Produktas nerastas' });
        }

        const ratings = await Rating.findAll({
            where: { product_id: productId },
        });

        if (ratings.length === 0) {
            return res.status(200).json({
                message: 'Komentarų nėra',
                data: [],
                avgRating: 0,
                totalRatings: 0,
            });
        }

        const userIds = [...new Set(ratings.map((rating) => rating.user_id))];

        const users = await User.findAll({
            where: { id: { [Op.in]: userIds } },
        });

        // Gauname visus įvykius, susijusius su šio produkto reitingais
        const ratingEvents = await Event.findAll({
            where: {
                product_id: productId,
                type_id: 1, // "created"
                target_id: 6, // "rating"
            },
        });

        const userMap = {};
        users.forEach((user) => {
            userMap[user.id] = user;
        });

        // Susiejame reitingus su įvykiais pagal user_id ir kitus kriterijus
        const ratingEventMap = {};
        ratings.forEach(rating => {
            // Ieškome atitinkančio įvykio pagal user_id ir timestamp eiliškumą
            const matchingEvent = ratingEvents.find(event => 
                event.user_id === rating.user_id &&
                event.product_id === rating.product_id
            );
            if (matchingEvent) {
                ratingEventMap[rating.id] = matchingEvent;
                // Pašaliname panaudotą įvykį, kad jis nebūtų pakartotinai priskirtas
                ratingEvents.splice(ratingEvents.indexOf(matchingEvent), 1);
            }
        });

        let totalStars = 0;

        const comments = ratings.map((rating) => {
            totalStars += rating.stars;
            const event = ratingEventMap[rating.id];
            return {
                username: userMap[rating.user_id]?.username || 'Nežinomas',
                comment: rating.comment,
                stars: rating.stars,
                timestamp: event ? event.timestamp : null,
            };
        }).filter(comment => comment.comment);

        const avgRating = +(totalStars / ratings.length).toFixed(2);

        return res.json({
            avgRating,
            totalRatings: ratings.length,
            data: comments,
        });
    } catch (err) {
        console.error('Klaida gaunant komentarus:', err);
        return res.status(500).json({ message: 'Klaida gaunant komentarus' });
    }
};

export { getProductCommentsById };

