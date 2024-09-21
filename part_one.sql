USE robot_db;

SELECT *
FROM robots;
SELECT name AS 'Robot Name', price AS Price
FROM robots;


# Aggregation queries

SELECT COUNT(*)
FROM robots;

SELECT AVG(price) AS 'Average Price'
FROM robots;

SELECT MIN(price) AS 'Minimum Price'
FROM robots;
SELECT MAX(price) AS 'Maximum Price'
FROM robots;

INSERT INTO robots (id, name, model, category, price, weight, battery_capacity)
VALUES (6, 'RoboProgrammer', 'RM-113', 'Security', 999.99, 5.5, 5000);


SELECT category
FROM robots
GROUP BY category;

SELECT category, COUNT(*)
FROM robots
GROUP BY category;

SELECT category, COUNT(*), AVG(price)
FROM robots
WHERE price > 800
GROUP BY category
HAVING COUNT(*) > 1;


SELECT *
FROM robots
WHERE category = 'Security';

SELECT *
FROM robots
WHERE category = 'Security'
  AND price > 2000;
SELECT *
FROM robots
WHERE category = 'Security'
   OR category = 'Household';

SELECT *
FROM robots
WHERE category IN ('Security', 'Household');


SELECT *
FROM robots;

SELECT *
FROM robots
WHERE category LIKE '%n%';

SELECT *
FROM robots
WHERE model LIKE 'R_-_00';


SELECT *
FROM robots
WHERE price BETWEEN 1000 AND 4000;


SELECT *
FROM robots
ORDER BY weight;

SELECT DISTINCT category
FROM robots;



