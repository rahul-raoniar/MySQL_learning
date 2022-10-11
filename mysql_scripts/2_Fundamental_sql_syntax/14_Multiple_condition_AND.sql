USE sakila;

-- How many films have a rating of G
SELECT *
FROM film
WHERE rating = 'G';

-- How many films have a rating of G with Trailars as their only special feature?
SELECT *
FROM film
WHERE rating = 'G' AND special_features = 'Trailers';


-- How many of the films identified in the previous example cost 2.99 to rent?
SELECT *
FROM film
WHERE rating = 'G' AND
 special_features = 'Trailers' AND
 rental_rate = 2.99;


-- How many of the films identified in the previous example have a rental duration of greater than 3 days
SELECT *
FROM film
WHERE 
rating = 'G' AND 
special_features = 'Trailers' AND
rental_rate = 2.99 AND
rental_duration > 3;
