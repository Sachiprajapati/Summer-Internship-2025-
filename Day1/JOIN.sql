CREATE TABLE IF NOT EXISTS buyer (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO buyer (firstname, lastname, city) VALUES
('Ronak', 'Mehta', 'Pune'),
('Priya', 'Sharma', 'Delhi'),
('Aman', 'Verma', 'Mumbai'),
('Kavya', 'Reddy', 'Hyderabad'),
('Rohit', 'Singh', 'Lucknow'),
('Sneha', 'Patel', 'Ahmedabad'),
('Vikram', 'Joshi', 'Bangalore'),
('Divya', 'Kapoor', 'Chandigarh'),
('Ankit', 'Gupta', 'Kolkata'),
('Neha', 'Yadav', 'Jaipur');

CREATE TABLE IF NOT EXISTS payment (
    id SERIAL,
    buyer_id INT,
    amount NUMERIC(10,2),
    mode VARCHAR(100),
    paydate DATE,
    FOREIGN KEY (buyer_id) REFERENCES buyer(id)
);

INSERT INTO payment (amount, mode, paydate) VALUES
(499.99, 'UPI', '2024-05-01'),
(1200.00, 'Cash', '2024-05-03'),
(250.75, 'Card', '2024-05-05'),
(999.00, 'Net Banking', '2024-05-07'),
(1500.50, 'UPI', '2024-05-10'),
(300.00, 'Cash', '2024-05-12'),
(875.25, 'Card', '2024-05-15'),
(450.00, 'Wallet', '2024-05-18'),
(699.99, 'UPI', '2024-05-20'),
(2200.00, 'Net Banking', '2024-05-22');

INSERT INTO payment (buyer_id, amount, mode, paydate) VALUES
(1, 499.99, 'UPI', '2024-05-01'),
(2, 1200.00, 'Cash', '2024-05-03'),
(3, 250.75, 'Card', '2024-05-05');

SELECT 
    b.id AS buyer_id,
    b.firstname,
    b.lastname,
    b.city,
    p.amount,
    p.mode,
    p.paydate
FROM buyer b
INNER JOIN payment p ON b.id = p.buyer_id;

--LEFT JOIN 
SELECT 
    b.id AS buyer_id,
    b.firstname,
    b.lastname,
    b.city,
    p.amount,
    p.mode,
    p.paydate
FROM buyer b
LEFT JOIN payment p ON b.id = p.buyer_id;

--RIGHT JOIN
SELECT 
    b.id AS buyer_id,
    b.firstname,
    b.lastname,
    b.city,
    p.amount,
    p.mode,
    p.paydate
FROM buyer b
RIGHT JOIN payment p ON b.id = p.buyer_id;

--FULL join
SELECT 
    b.id AS buyer_id,
    b.firstname,
    b.lastname,
    b.city,
    p.amount,
    p.mode,
    p.paydate
FROM buyer b
FULL OUTER JOIN payment p ON b.id = p.buyer_id;


