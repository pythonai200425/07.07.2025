CREATE TABLE shopping (
  id INTEGER PRIMARY KEY,
  name TEXT,
  amount INTEGER);

DROP TABLE shopping;

ALTER table shopping RENAME to shopp;

ALTER table shopp RENAME to shopping;

INSERT INTO shopping VALUES (1, 'Avokado', 5);
INSERT INTO shopping VALUES (2, 'Milk', 2);
INSERT INTO shopping VALUES (3, 'Bread', 3);
INSERT INTO shopping VALUES (4, 'Chocolate', 8);
INSERT INTO shopping VALUES (5, 'Bamba', 5);
INSERT INTO shopping VALUES (6, 'Orange', 10);

-- SELECT * FROM shopping;
SELECT id, name FROM shopping

SELECT * FROM shopping WHERE amount > 5;
SELECT * FROM shopping WHERE amount = 2;
SELECT * FROM shopping WHERE name LIKE '%Bamba';

DELETE from shopping WHERE name like 'Orange';

UPDATE shopping SET name = 'Bisli' WHERE name LIKE 'Bamba'

UPDATE shopping SET amount=1 WHERE name LIKE 'Milk';

ALTER TABLE shopping ADD COLUMN maavar;

UPDATE shopping SET maavar=6 WHERE id=1;
UPDATE shopping SET maavar=3 WHERE id=2;
UPDATE shopping SET maavar=12 WHERE id=3;
UPDATE shopping SET maavar=8 WHERE id=4;
UPDATE shopping SET maavar=5 WHERE id=5;

--SELECT * FROM shopping WHERE amount > 1 AND maavar > 5;
SELECT * FROM shopping WHERE maavar BETWEEN 3 AND 5;

--SELECT * FROM shopping ORDER BY maavar ASC;
SELECT * FROM shopping ORDER BY maavar DESC;

INSERT INTO shopping
VALUES (6, 'CHOCO', NULL, 1);
delete from shopping where id=6;
SELECT COUNT(*)from shopping;
SELECT COUNT(amount)from shopping;
SELECT MAX(amount) from shopping;
SELECT AVG(amount) from shopping;
SELECT MIN(amount) from shopping;

--INSERT INTO shopping VALUES (6, 'Onions', 3, 6);
--INSERT INTO shopping VALUES (7, 'Orio', 1, 8);
Select maavar, count(*), max(amount) as max_item
FROM shopping
-- order by name -- no meaning
GROUP BY maavar
HAVING max_item > 3
order by count(*) desc;

select  maavar
from shopping
order by maavar;

CREATE TABLE sales (
    id INTEGER PRIMARY KEY,
    product TEXT NOT NULL,
    category TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    price REAL NOT NULL
);

INSERT INTO sales (product, category, quantity, price) VALUES
('Apple', 'Fruit', 10, 1.0),
('Banana', 'Fruit', 15, 0.8),
('Carrot', 'Vegetable', 12, 0.5),
('Lettuce', 'Vegetable', 5, 0.7),
('Orange', 'Fruit', 8, 1.2),
('Tomato', 'Vegetable', 20, 0.9),
('Strawberry', 'Fruit', 6, 2.0);


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


