INSERT INTO "users" (username, email, image_url, description, contacts) VALUES
('Pavel gusev', 'pavel.gusev431@gmail.com', 'https://c8.alamy.com/zooms/9/305f98cf4d084cefbe7d506128e11ecb/pxx5p8.jpg', 'text text write here more 5 words', 'Konstutucijos 45, Vilnius'),
('Vardenis Vardenis', 'vardenis@gmail.com', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-photos%2Fability&psig=AOvVaw3A2c6Mz4QsnX-AcWAKZbE1&ust=1742494830976000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLDW1p3hlowDFQAAAAAdAAAAABAJ', 'text text write here more 5 words', 'Konstutucijos 45, Vilnius'),
('pavardenis Vardenis', 'pavardenis@gmail.com', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg', 'text text write here more 5 words', 'Konstutucijos 45, Vilnius'),
('trending', 'trending@gmail.com', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg', 'text text write here more 5 words',  'Konstutucijos 45, Vilnius'),
('bestnew', 'bestnew@gmail.com', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg',  'text text write here more 5 words', 'Konstutucijos 45, Vilnius');
 

INSERT INTO products (user_id, subcategory_id, name, price, description, image_url, amount_in_stock)
VALUES
-- Pavel Gusev
(2, 1, 'iPhone 15 Pro', 129900, 'Naujausias Apple telefonas', 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png', 50),
(2, 2, 'MacBook Air M2', 239900, 'testas', 'https://techcrunch.com/wp-content/uploads/2022/07/CMC_1580.jpg', 30),
(2, 3, 'AirPods Pro', 79900, 'Aukštos kokybės Apple ausinės', 'https://istore.lt/media/catalog/product/cache/1/image/800x/602f0fa2c1f0d1ba5e241f914e856ff9/a/i/airpods_4_pdp_image_position_2__wwen.jpg', 40),
(2, 4, 'Apple Watch Series 8', 109900, 'Išmanusis laikrodis su naujomis funkcijomis', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfEI1ZxzdYj2i4XKe7nExt_GipGBGq31mvSw&s', 25),
(2, 5, 'iPad Pro 12.9"', 159900, 'Naujausias Apple planšetinis kompiuteris', 'https://cdn.pixabay.com/photo/2019/04/25/21/42/ipad-4166255_640.jpg', 20),
(2, 6, 'Apple TV 4K', 179900, 'Streamingo įrenginys su 4K vaizdo kokybe', 'https://cdn.pixabay.com/photo/2017/11/19/08/47/television-2958579_640.jpg', 15),
(2, 7, 'Beats Studio3 Wireless', 89900, 'Beats ausinės su triukšmo slopinimu', 'https://cdn.pixabay.com/photo/2017/06/04/23/43/headphones-2375491_640.jpg', 50),
(2, 8, 'Apple Magic Mouse', 69900, 'Ergonomiška Apple pelė', 'https://cdn.pixabay.com/photo/2018/07/12/08/43/apple-3539336_640.jpg', 30),
(2, 9, 'Apple Keyboard', 99900, 'Elegantiška Apple klaviatūra', 'https://cdn.pixabay.com/photo/2015/12/09/12/47/apple-1081042_640.jpg', 40),
(2, 10, 'iPhone 14 Pro', 119900, 'Ankstesnis modelis, vis dar puikus', 'https://cdn.pixabay.com/photo/2019/06/24/22/24/smartphone-4302037_640.jpg', 60),
 
-- Vardenis Vardenis
(3, 1, 'Samsung Galaxy S24', 99900, 'Galingas Samsung flagmanas', 'https://kainos-img.dgn.lt/photos2_25_268648490/img.jpg', 30),
(3, 2, 'Samsung Galaxy Tab S8', 84900, 'Samsung planšetinis kompiuteris', 'https://cdn.pixabay.com/photo/2017/09/04/12/31/smartphone-2713652_640.jpg', 50),
(3, 3, 'Samsung Galaxy Buds2', 39900, 'Komfortiškos ausinės su aktyviu triukšmo slopinimu', 'https://cdn.pixabay.com/photo/2019/07/09/06/24/headphones-4321242_640.jpg', 40),
(3, 4, 'Samsung SmartWatch', 79900, 'Išmanusis laikrodis su nuotolinio valdymo funkcija', 'https://cdn.pixabay.com/photo/2018/11/14/18/47/smartwatch-3818844_640.jpg', 35),
(3, 5, 'Samsung QLED TV', 149900, 'Aukštos kokybės televizorius su QLED technologija', 'https://cdn.pixabay.com/photo/2015/09/18/19/03/black-946146_640.jpg', 45),
(3, 6, 'Samsung Notebook', 109900, 'Galingas nešiojamas kompiuteris', 'https://cdn.pixabay.com/photo/2018/03/21/09/52/samsung-3246582_640.jpg', 40),
(3, 7, 'Samsung Soundbar', 79900, 'Garsinė juosta su aukšta garso kokybe', 'https://cdn.pixabay.com/photo/2017/09/11/18/14/earphones-2733452_640.jpg', 60),
(3, 8, 'Samsung Monitor', 59900, 'Didelis ekranas su 4K raiška', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6Xk9-82MPIO_iMgGBjAmk09WWWFXeqZxFqQ&s', 50),
(3, 9, 'Samsung Powerbank', 24900, 'Nešiojamas įkroviklis', 'https://www.varle.lt/static/uploads/products/496/sam/samsung-eb-u3300xjegeu-nesiojamasis-ikroviklis_UgzXRJC.jpg', 70),
(3, 10, 'Samsung External SSD', 45900, 'Greitas išorinis SSD diskas', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU7DWLxqQhqoAicUNO0RWMdCuOSvP2OVrplA&s', 30),
 
-- testas
(4, 2, 'MacBook Air M2', 239900, 'testas', 'https://cdn.pixabay.com/photo/2015/09/18/19/03/black-946146_640.jpg', 30),
--testas
(5, 5, 'betkas', 15, 'testuoju', 'https://cdn.pixabay.com/photo/2019/04/25/21/42/ipad-4166255_640.jpg', 20),
 
(5, 1, 'Testo telefonas', 39999, 'Tai tik testinis telefonas', 'https://cdn.pixabay.com/photo/2017/09/11/18/14/earphones-2733452_640.jpg', 10),
(5, 2, 'Testo kompiuteris', 49999, 'Testo kompiuteris su labai gera kaina', 'https://cdn.pixabay.com/photo/2015/09/18/19/03/black-946146_640.jpg', 5),
(5, 3, 'Testo ausinės', 19999, 'Testinės ausinės', 'https://cdn.pixabay.com/photo/2019/07/09/06/24/headphones-4321242_640.jpg', 15),
(5, 4, 'Testo laikrodis', 24999, 'Testinis laikrodis su visomis funkcijomis', 'https://cdn.pixabay.com/photo/2017/09/11/18/14/earphones-2733452_640.jpg', 8),
(5, 4, 'Tikrinu ar veikia data', 249, 'tikrinu', 'https://cdn.pixabay.com/photo/2017/09/11/18/14/earphones-2733452_640.jpg', 8);

INSERT INTO "events" (user_id,product_id, type_id, target_id,  description, timestamp)
VALUES
-- userio sukurimas
(2,null, 1, 1,  'vartotojas sukurtas', '2025-03-25T15:58:44.450Z'),
(3,null, 1, 1,  'vartotojas sukurtas', '2025-03-27T15:58:44.450Z'),
(4,null, 1, 1,  'vartotojas sukurtas', '2025-03-25T15:58:44.450Z'),
(5,null, 1, 1,  'vartotojas sukurtas', '2025-03-25T15:58:44.450Z'),
(6,null, 1, 1,  'vartotojas sukurtas', '2025-03-25T15:58:44.450Z'),

-- produktu sukurimas
(2,1, 1, 2,  'ikele iPhone 15 Pro', '2024-03-25T15:58:44.450Z'),
(2,2, 1, 2,  'ikele MacBook Air M2', '2025-03-25T15:58:44.450Z'),
(2,3, 1, 2,  'ikele AirPods Pro', '2025-03-25T15:58:44.450Z'),
(2,4, 1, 2,  'Samsung SmartWatch', '2025-03-25T15:58:44.450Z'),
(2,5, 1, 2,  'ikele iPad Pro 12.9', '2025-03-25T15:58:44.450Z'),
(2,6, 1, 2,  'ikele Apple TV 4K', '2025-03-25T15:58:44.450Z'),
(2,7, 1, 2,  'ikele Beats Studio3 Wireless', '2025-03-25T15:58:44.450Z'),
(2,8, 1, 2,  'ikele Apple Magic Mouse', '2025-03-25T15:58:44.450Z'),
(2,9, 1, 2,  'ikele Apple Keyboard', '2025-03-25T15:58:44.450Z'),
(2,10, 1, 2,  'ikele Samsung External SSD', '2025-03-25T15:58:44.450Z'),

(3,11, 1, 2,  'ikele Samsung Galaxy S24', '2025-03-25T15:58:44.450Z'),
(3,12, 1, 2,  'ikele Samsung Galaxy Tab S8', '2025-03-25T15:58:44.450Z'),
(3,13, 1, 2,  'ikele Samsung Galaxy Buds2', '2025-03-25T15:58:44.450Z'),
(3,14, 1, 2,  'ikele Samsung Samsung SmartWatch', '2025-03-25T15:58:44.450Z'),
(3,15, 1, 2,  'ikele Samsung QLED TV', '2025-03-25T15:58:44.450Z'),
(3,16, 1, 2,  'ikele Samsung Notebook', '2025-03-25T15:58:44.450Z'),
(3,17, 1, 2,  'ikele Samsung Soundbar', '2025-03-25T15:58:44.450Z'),
(3,18, 1, 2,  'ikele Samsung Monitor', '2025-03-25T15:58:44.450Z'),
(3,19, 1, 2,  'ikele Samsung Powerbank', '2025-03-25T15:58:44.450Z'),
(3,20, 1, 2,  'ikele Samsung External SSD', '2025-03-25T15:58:44.450Z'),

(4,21, 1, 2,  'ikele MacBook Air M2', '2025-03-25T15:58:44.450Z'),

(5,22, 1, 2,  'ikele betkas', '2025-03-25T15:58:44.450Z'),
(5,23, 1, 2,  'ikele Testo telefonas', '2025-03-25T15:58:44.450Z'),
(5,24, 1, 2,  'ikele Testo kompiuteris', '2025-03-25T15:58:44.450Z'),
(5,25, 1, 2,  'ikele Testo ausinės', '2025-03-25T15:58:44.450Z'),
(5,26, 1, 2,  'ikele Testo laikrodis', '2025-03-25T15:58:44.450Z'),

(5,27, 1, 2,  'ikele tikrinu', '2025-03-25T15:58:44.450Z'),





--komentarai

(3,1, 1, 6,  'sukure kometara', '2025-03-25T15:58:44.450Z'),
(4,1, 1, 6,  'sUKURE KOMETARA', '2025-01-25T15:58:44.450Z'),
(4,1, 1, 6,  'sUKURE KOMETARA', '2023-09-14T15:58:44.450Z'),
(5,1, 1, 6,  'sUKURE KOMETARA', '2020-01-25T15:58:44.450Z'),

(3,2, 1, 6,  'sukure kometara', '2025-03-25T15:58:44.450Z'),
(4,2, 1, 6,  'sUKURE KOMETARA', '2025-01-25T15:58:44.450Z'),
(4,2, 1, 6,  'sUKURE KOMETARA', '2023-09-14T15:58:44.450Z'),
(5,2, 1, 6,  'sUKURE KOMETARA', '2020-01-25T15:58:44.450Z'),

(3,3, 1, 6,  'sukure kometara', '2025-03-25T15:58:44.450Z'),
(4,3, 1, 6,  'sUKURE KOMETARA', '2025-01-25T15:58:44.450Z'),
(4,3, 1, 6,  'sUKURE KOMETARA', '2023-09-14T15:58:44.450Z'),
(5,3, 1, 6,  'sUKURE KOMETARA', '2020-01-25T15:58:44.450Z'),

(3,4, 1, 6,  'sukure kometara', '2025-03-25T15:58:44.450Z'),
(4,4, 1, 6,  'sUKURE KOMETARA', '2025-01-25T15:58:44.450Z'),
(4,4, 1, 6,  'sUKURE KOMETARA', '2023-09-14T15:58:44.450Z'),
(5,4, 1, 6,  'sUKURE KOMETARA', '2020-01-25T15:58:44.450Z'),

--tikrinu 
(5,1, 1, 6,  'sUKURE KOMETARA', '2025-03-20T15:58:44.450Z'),
(2,27, 1, 6,  'sUKURE KOMETARA', '2025-03-19T15:58:44.450Z');




INSERT INTO "ratings" (user_id, product_id, comment, stars, image_url)
VALUES
(3, 1, 'Puikus telefonas, labai rekomenduoju!', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(4, 1, 'Puikus telefonas, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(4, 1, 'puikus telefonas, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(5, 1, 'puikus telefonas, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),


(3, 2, 'Puikus telefonas, labai rekomenduoju!', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(4, 2, 'Puikus telefonas, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(4, 2, 'puikus telefonas, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(5, 2, 'puikus telefonas, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),

(3, 3, 'Puikios ausines, labai rekomenduoju!', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(4, 3, 'Puikios ausines, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(4, 3, 'Puikios ausines, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(5, 3, 'Puikios ausines, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),

(3, 4, 'Puikios laikrodis, labai rekomenduoju!', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(4, 4, 'Puikios laikrodis, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(4, 4, 'puikus laikrodis, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(5, 4, 'Puikus laikrodis, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),

--tikrinu
(5, 1, 'Puikus telefonas, ', 1, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png'),
(2, 27, 'Puikus laikrodis, ', 5, 'https://cdn.pixabay.com/photo/2013/07/12/18/39/smartphone-153650_640.png');







