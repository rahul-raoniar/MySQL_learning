# DISTINCT: select unique records

-- USE sakila schema
USE sakila;

-- What are the different ratings that are assigned to flims?
SELECT DISTINCT rating FROM film;


-- What are the different rental rates that are applied to flims?
SELECT DISTINCT rental_rate FROM film;


-- Are there films within each rating at each price level?
SELECT DISTINCT rating, rental_rate FROM film;