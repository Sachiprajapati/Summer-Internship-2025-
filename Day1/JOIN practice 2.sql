CREATE TABLE IF NOT EXISTS customer1(
id int PRIMARY KEY,
name varchar(50),
add_id int
);

INSERT INTO customer1(id,name,add_id)
VALUES
(1,'seema',01),
(2,'reema',02),
(3,'meema',03),
(4,'neema',04),
(5,'zeema',05);

CREATE TABLE IF NOT EXISTS buyer1(
id int PRIMARY KEY,
mode varchar(20),
paydate date
);

INSERT INTO buyer1(id,mode,paydate)
VALUES
(1,'cash','2024-05-01'),
(6,'wallet','2025-06-01'),
(7,'upi','2022-11-08'),
(8,'cash','2025-09-25'),
(4,'wallet','2024-07-09');

SELECT *
FROM customer1 as c
INNER JOIN buyer1 as b
ON c.id = b.id

SELECT *
FROM customer1 AS c
LEFT JOIN buyer1 AS b
ON c.id=b.id

SELECT *
FROM customer1 AS c
RIGHT JOIN buyer1 AS b
ON c.id=b.id

SELECT *
FROM customer1 AS c
FULL JOIN buyer1 AS b
ON c.id=b.id