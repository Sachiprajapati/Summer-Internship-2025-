CREATE TABLE IF NOT EXISTS customer (
    customer_id serial PRIMARY KEY,
    first_name character varying(100) NOT NULL, 
    last_name character varying(100) NOT NULL, 
    email character varying(255) UNIQUE NOT NULL,
    created_date timestamp with time zone NOT NULL DEFAULT now(),
    updated_date timestamp with time zone
);

INSERT INTO customer (first_name, last_name, email, created_date, updated_date) VALUES
('Aarav', 'Sharma', 'aarav.sharma@example.com', now(), now()),
('Priya', 'Verma', 'priya.verma@example.com', now(), NULL),
('Rahul', 'Kumar', 'rahul.kumar@example.com', now(), now()),
('Sneha', 'Patel', 'sneha.patel@example.com', now(), NULL),
('Ankit', 'Singh', 'ankit.singh@example.com', now(), now()),
('John', 'Doe', 'john.doe@example.com', now(), now()),
('Jane', 'Smith', 'jane.smith@example.com', now(), NULL),
('Alice', 'Johnson', 'alice.johnson@example.com', now(), now()),
('Bob', 'Brown', 'bob.brown@example.com', now(), NULL),
('Charlie', 'Davis', 'charlie.davis@example.com', now(), now()),
('Kavya', 'Reddy', 'kavya.reddy@example.com', now(), NULL),
('Manish', 'Gupta', 'manish.gupta@example.com', now(), now()),
('Divya', 'Shah', 'divya.shah@example.com', now(), NULL),
('Vikram', 'Joshi', 'vikram.joshi@example.com', now(), now()),
('Sonal', 'Mehta', 'sonal.mehta@example.com', now(), NULL);

SELECT * FROM customer;

SELECT customer_id FROM customer;

UPDATE customer
SET first_name='Sonali',
last_name='Mehra', 
email='Sonal.Mehra@example.com'
WHERE customer_id = 15;

SELECT * FROM customer
WHERE customer_id=15;

DELETE FROM customer 
WHERE customer_id=15;

SELECT first_name,last_name
FROM customer
ORDER BY 
first_name ASC,
last_name DESC;

SELECT email
FROM customer 
WHERE first_name = 'john';

SELECT customer_id
FROM customer
WHERE first_name IN ('Rahul','Vikram','Bob');


