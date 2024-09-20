-- queries.sql
-- This script performs some basic SELECT queries for demo purposes.

-- Retrieve all users
SELECT * FROM users;

-- Retrieve all products and their current stock levels
SELECT product_name, price, stock FROM products;

-- Get all orders along with the user's name and product ordered
SELECT 
    o.order_id,
    u.username,
    p.product_name,
    o.quantity,
    o.order_date
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN products p ON o.product_id = p.product_id;

-- Calculate total orders by each user
SELECT 
    u.username,
    COUNT(o.order_id) AS total_orders
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.username;

-- Total sales for each product
SELECT 
    p.product_name,
    SUM(o.quantity * p.price) AS total_sales
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name;
