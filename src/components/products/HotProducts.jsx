import { getHotProducts } from '../../helpers/getProduct';
import { useState, useEffect } from 'react';
import ProductCard from '../ProductCard';
import { Link } from 'react-router-dom';

export default function HotProducts() {
    const [products, setProducts] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);

    useEffect(() => {
        const fetchProducts = async () => {
            try {
                const response = await getHotProducts();
                setProducts(response.data.data);
            } catch (err) {
                setError('Nepavyko įkelti produktų. Bandykite dar kartą.');
                console.log(err);
            } finally {
                setLoading(false);
            }
        };

        fetchProducts();
    }, []);

    if (loading)
        return <p className="text-center text-gray-500">Kraunama...</p>;
    if (error) return <p className="text-center text-red-500">{error}</p>;

    return (
        <div className="mt-10 w-full">
            <div className="flex ml-10 flex-row gap-2 mt-2">
                <div className="w-2 h-6 bg-red-500"></div>
                <h2 className="text-l text-red-500 font-bold mb-2">
                    This Week
                </h2>
            </div>
            <div className="flex flex-row justify-between items-center">
                <h2 className="text-2xl ml-10 font-bold py-2">Hot Products</h2>
                {products.length > 0 && (
                    <Link to="/products">
                        <button className="bg-red-500 dark:bg-red-700 mr-10 hover:bg-red-700 dark:hover:bg-red-800 text-white font-bold rounded py-2 px-4">
                            View All Products
                        </button>
                    </Link>
                )}
            </div>

            {/* Jei nėra produktų */}
            {products.length === 0 ? (
                <p className="text-center text-gray-500 mt-4">
                    Currently, no hot products. Check back later!
                </p>
            ) : (
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4 p-4">
                    {products.map((product) => (
                        <ProductCard
                            key={product.id}
                            product={product}
                            avgRating={product.avgRating}
                            ratingCount={product.ratingCount}
                        />
                    ))}
                </div>
            )}
        </div>
    );
}
