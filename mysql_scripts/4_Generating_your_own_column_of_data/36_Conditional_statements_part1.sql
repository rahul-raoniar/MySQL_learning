/*
Add a column called "Length Category" starting:
1.  "Too long" for films longer greater than or equal to 3 hours
2. "Long" for films greater than or equal to 2 hours but ledd than 3 hours
3. "OK" for files freater than or equal to 1.5 hours but ledd than 2 hours
4. "Short" for films less than 1.5 hours
*/

USE sakila;

SELECT film_id, 
	   title,
	   length,
	   (CASE 
			WHEN length >= 180 THEN 'Too Long'
            WHEN length >= 120 THEN "Long"
            WHEN length >= 90 THEN "OK"
            ELSE "Short"
	   END) AS `Length Category`
       
FROM film;
			