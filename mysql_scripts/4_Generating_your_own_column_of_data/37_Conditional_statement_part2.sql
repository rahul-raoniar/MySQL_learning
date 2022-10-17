/*
Add a column called 'new_rental_rate' which:
1. Add 0.01 to the current rental rate for PG rated films
2. Doubles the rental rate for G rated films only
3. Keeps the same rental rate for all other film ratings
*/
USE sakila;

SELECT film_id,
	   title,
       rating,
       rental_rate,
       (CASE 
			WHEN rating = 'PG' THEN rental_rate + 0.01
            WHEN rating = 'G' THEN rental_rate * 2
            ELSE rental_rate
       END) AS `new_rental_rate`
FROM film;