USE sakila;


-- What is the average rental rate across all films in the film dataset
SELECT AVG(rental_rate)
FROM film; -- 2.98

-- Is the averate rental rate for PG rated films higher or lower than the overall average?
SELECT AVG(rental_rate) 
FROM film
WHERE rating = 'PG'; -- 3.05

-- What is the lowest average replacement cost for each rating?
SELECT rating,
	   AVG(replacement_cost) AS `RC`
FROM film
GROUP BY rating
ORDER BY `RC` ASC;

-- What is the average length of films for each combination of rating and rental duration?
SELECT rating,
	   rental_duration,
       AVG(length) AS `Averate length of film`
FROM film
GROUP BY rating, rental_duration
ORDER BY `Averate length of film` DESC;

-- Prove that the average function disregards NULL values
USE world;

SELECT *
FROM country
WHERE IndepYear = 1918;

SELECT SUM(GNPOld / 5)
FROM country
WHERE IndepYear = 1918;

SELECT SUM(GNPOld / 4)
FROM country
WHERE IndepYear = 1918;

SELECT AVG(GNPOld)
FROM country
WHERE IndepYear = 1918;

