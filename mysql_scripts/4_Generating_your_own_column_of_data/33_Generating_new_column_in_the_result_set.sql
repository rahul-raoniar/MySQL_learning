USE sakila;

/*
Add the follwoing titles to the result below, each containing null values;
Addition, Subatraction, Multiplication, Division, Integer Division, Modulus, Table Name
*/
SELECT film_id, 
	   title,
       rental_duration,
       rental_rate,
       length,
       replacement_cost,
       NULL AS `Addition`,
       NULL AS `Substraction`,
       NULL AS `Multiplication`,
       NULL AS `Division`,
       NULL AS `Integer Division`,
       NULL AS `Modulus`
FROM film;


-- Change the Null value of each column to the respective arithmatic operator in string form. Populate the table name with film table

SELECT film_id, 
	   title,
       rental_duration,
       rental_rate,
       length,
       replacement_cost,
       '+' AS `Addition`,
       '-' AS `Substraction`,
       '*' AS `Multiplication`,
       '/' AS `Division`,
       'DIV' AS `Integer Division`,
       '%' AS `Modulus`,
       'FILM TABLE' AS `Table Name`
FROM film;
