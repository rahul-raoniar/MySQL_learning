# Filtering Rows in Data using WHERE

-- Obtain all information partaining to customer that shop in Store_ID 1
SELECT *
FROM customer
WHERE store_id  = 1;


-- What store_id does Sarah shop at?
SELECT store_id
FROM customer
WHERE first_name = 'SARAH';


-- How many actors are called Nick?
SELECT *
FROM actor
WHERE first_name = 'Nick';