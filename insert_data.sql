-- insert_data.sql
-- This script inserts data into the `users`, `products`, and `orders` tables.

-- Inserting sample users
INSERT INTO users (username, email) VALUES 
('john_doe', 'john@example.com'),
('jane_smith', 'jane@example.com'),
('alice_wonder', 'alice@example.com');

-- Inserting sample products
INSERT INTO products (product_name, price, stock) VALUES 
('Laptop', 999.99, 10),
('Smartphone', 499.99, 20),
('Headphones', 89.99, 50);

-- Inserting sample orders
INSERT INTO orders (user_id, product_id, quantity) VALUES 
(1, 1, 1), -- John Doe buys 1 Laptop
(2, 2, 2), -- Jane Smith buys 2 Smartphones
(3, 3, 3); -- Alice Wonder buys 3 Headphones
