# keyword AS is optional 
USE sakila;
-- Chnage the column headers so that the column names are capitalised acronyms

SELECT 
	title AS T,
	rental_duration AS RD,
	rental_rate AS RR, 
	replacement_cost AS RC
FROM film;

# OR 
# Without AS

SELECT 
	title T,
	rental_duration RD,
	rental_rate RR, 
	replacement_cost RC
FROM film;

-- Change the column headers to remove the underscore in the column name
SELECT
	title AS Title,
	rental_duration AS `Rental Duration`,
	rental_rate AS `Rental Rate`, 
	replacement_cost AS `Replacement Cost`
FROM film;


-- Using the above query, change the table name to be the letter `f`

SELECT
	title AS Title,
	rental_duration AS `Rental Duration`,
	rental_rate AS `Rental Rate`, 
	replacement_cost AS `Replacement Cost`
FROM film AS `f`;