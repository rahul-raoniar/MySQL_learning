-- SELECT ALL DATA 	within the customer table
SELECT * FROM customer;

-- Select all data within the store table
SELECT * FROM store;

-- Select all data within the flim table
SELECT * FROM film;

-- Select all customers names and their respective customer ID (3 column only)
SELECT 
customer_id,
first_name, 
last_name 
FROM customer;

-- SELECT all actors names and their respective actor ID (3 columns only)
SELECT 
actor_id,
first_name,
last_name 
FROM actor;

-- Select all data within cutomer Table (specifying schema)
SELECT * FROM sakila.customer;
