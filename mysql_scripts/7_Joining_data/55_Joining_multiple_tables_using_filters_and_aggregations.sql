USE sakila;

-- Bring back all information from rental table that relates to Mary Smith
SELECT *
FROM rental;

SELECT *
FROM customer;

SELECT *
FROM rental AS r
INNER JOIN customer AS c
ON r.customer_id = c.customer_id
WHERE c.first_name = 'Mary' AND c.last_name = 'Smith';

-- Extend the above query to join to the inventory table and bring back all information from each table for mary smith
SELECT *
FROM rental AS r
INNER JOIN customer AS c
ON r.customer_id = c.customer_id
INNER JOIN inventory as i
ON r.inventory_id = i.inventory_id
WHERE c.first_name = 'Mary' AND c.last_name = 'Smith';

-- Obtain the unique film id's that mary smith has rented
SELECT DISTINCT(i.film_id)
FROM rental AS r
INNER JOIN customer AS c
ON r.customer_id = c.customer_id
INNER JOIN inventory as i
ON r.inventory_id = i.inventory_id
WHERE c.first_name = 'Mary' AND c.last_name = 'Smith';

-- How many rentals are within each rating for Mary Smith?
SELECT f.rating,
		COUNT(rating)
FROM rental AS r
INNER JOIN customer AS c
ON r.customer_id = c.customer_id
INNER JOIN inventory as i
ON r.inventory_id = i.inventory_id
INNER JOIN film AS f
ON i.film_id = f.film_id
WHERE c.first_name = 'Mary' AND c.last_name = 'Smith'
GROUP BY f.rating;

-- Assuming Mary returned the film on time as per the rental duration, how much would she spent on all the films she rented
SELECT SUM(rental_rate) AS `Total Cost`
FROM rental AS r
INNER JOIN customer AS c
ON r.customer_id = c.customer_id
INNER JOIN inventory as i
ON r.inventory_id = i.inventory_id
INNER JOIN film AS f
ON i.film_id = f.film_id
WHERE c.first_name = 'Mary' AND c.last_name = 'Smith';