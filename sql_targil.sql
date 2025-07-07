CREATE TABLE sales (
    id INTEGER PRIMARY KEY,
    product TEXT NOT NULL,
    category TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    price REAL NOT NULL
);

INSERT INTO sales (product, category, quantity, price) VALUES
('Apple', 'Fruit', 10, 1.0),
('Banana', 'Fruits', 15, 0.8),
('Carrot', 'Vegetable', 12, 0.5),
('Lettuce', 'Vegetable', 5, 0.7),
('Orange', 'Fruit', 8, 1.2),
('Tomato', 'Vegetable', 20, 0.9),
('Strawberry', 'Fruit', 6, 2.0);

-- find:
-- Query 1: Total quantity sold per category
-- Query 2: [HAVING] Categories with total quantity > 38

-- Query 3: [WHERE]
-- categories number of products where
-- Products with total revenue (=price * quantity) > 10

-- 1
SELECT category, SUM(quantity) AS total_quantity FROM sales
GROUP BY category;

-- 2
SELECT category, SUM(quantity) AS total_quantity FROM sales
GROUP BY category
HAVING total_quantity  > 38;

-- 3
SELECT category, count(*) as "Count: revenue > 10"  FROM sales
where (price * quantity) > 10
GROUP BY category

