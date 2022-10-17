USE sakila;

/*
Add a column called 'new_rental_rate' based on the following criteria:
1. add 0.01 to the current rental_rate for PG rated films that have a rental duration greater than or equal to 6
2. Divide the rental rate by 2 for NC-17 rated films or those films with rental duration of 3
3. Double the rental rate for films with a rating of G or PG-13 or rental duration of 4 or 5 days
4. Keep the same rental_rate for all other films
*/

SELECT film_id,
	   title,
       rating,
       rental_rate,
       rental_duration,
       FORMAT((CASE
			WHEN (rating = 'PG' AND rental_duration >= 6) THEN rental_rate + 0.01
            WHEN (rating = 'NC-17' OR rental_duration = 3) THEN rental_rate / 2
            WHEN (rating IN ('G', 'PG-13') OR rental_duration IN (4, 5)) THEN rental_rate * 2
            ELSE rental_rate
		END), 2) AS `new_rental_rate`
FROM film;


