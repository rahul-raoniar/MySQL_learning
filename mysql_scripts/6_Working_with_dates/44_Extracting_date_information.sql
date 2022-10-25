USE sakila;

-- DATE(): extract date
-- YEAR(): extract year
-- MONTH(): extract month
-- MONTHNAME(): extract month name
-- DAYOFMONTH(): extract day part of month
-- DAY(): synnoname of DAYOFMONTH() extract day part of the month
-- WEEKDAY(): ranges 0 to 6 (0: Monday and 6 Sunday)
-- DAYNAME(): extract day name
-- DAYOFWEEK(): ranges 1 to 7 (1: Sunday)
-- DAYOFYEAR(): extracts day of the year (1 to 365)
-- EXTRACT(): apply a particular function to extract a component of the datetime


SELECT customer_id,
	   rental_id,
       inventory_id,
       rental_date,
       DATE(rental_date),
       YEAR(rental_date),
       MONTH(rental_date),
       MONTHNAME(rental_date),
       DAYOFMONTH(rental_date),
       DAY(rental_date),
       WEEKDAY(rental_date),
       DAYNAME(rental_date),
       DAYOFWEEK(rental_date),
       DAYOFYEAR(rental_date),
       EXTRACT(HOUR FROM rental_date),
       EXTRACT(MINUTE FROM rental_date)
FROM rental
WHERE customer_id = 1 AND staff_id = 1;



