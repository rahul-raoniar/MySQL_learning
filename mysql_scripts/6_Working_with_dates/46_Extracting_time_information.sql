USE sakila;

-- TIME(): extract time part
-- HOUR(): Extract hour part
-- MINUTE(): Extract minute part
-- SECOND(): extract the second part
-- TIME(): Extract time part
-- EXTRACT(): apply a function to extract element

SELECT customer_id,
	   rental_id,
       inventory_id,
       rental_date,
       TIME(rental_date),
       HOUR(rental_date),
       MINUTE(rental_date),
       SECOND(rental_date),
       TIME(rental_date),
       EXTRACT(HOUR FROM rental_date) # HOUR, MINUTE, SECOND, HOUR_MINUTE, MINUTE_SECOND

FROM rental
WHERE customer_id = 1 AND staff_id = 1;