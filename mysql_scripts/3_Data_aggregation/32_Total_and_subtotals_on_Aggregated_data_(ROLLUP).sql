USE sakila;

-- Select rating, rental_duration and replacement_cost from the film table
SELECT rating,
	   rental_duration,
       replacement_cost
FROM film;

-- What is the total replacement cost?
SELECT SUM(replacement_COST)
FROM film;

-- Sum the replacement cost grouped by rating
SELECT rating,
	   SUM(replacement_cost)
FROM film
GROUP BY rating;

-- Example 1 of how to create a table with a total column...
-- Not efficient method
SELECT rating, SUM(replacement_cost)
FROM film
GROUP BY rating
UNION ALL
SELECT NULL,
	   SUM(replacement_cost)
FROM film;

-- Example 2 using ROLLUP (extension of the group by clause)
SELECT rating,
	   SUM(replacement_cost)
FROM film
GROUP BY rating WITH ROLLUP;

# Creating subtotal
SELECT rating, rental_duration,
	   SUM(replacement_cost)
FROM film
GROUP BY rating, rental_duration WITH ROLLUP;

-- Check whether Bull is actually subtotal / total rows
SELECT rating,
	   rental_duration, 
       SUM(replacement_cost),
       GROUPING(rating),          # adding identifier for NULL
       GROUPING(rental_duration)  # 1 means NULL
FROM film
GROUP BY rating, rental_duration WITH ROLLUP; # Giving sub and grand total

-- Relabel the Nulls
SELECT IF(GROUPING(rating), 'All Rating', rating),
	   IF (GROUPING(rental_duration), 'ALL RD Total', rental_duration),
       SUM(replacement_cost)
FROM film
GROUP BY rating, rental_duration WITH ROLLUP;

