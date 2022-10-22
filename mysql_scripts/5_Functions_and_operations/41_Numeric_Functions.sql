USE sakila;

SELECT * 
FROM payment;


-- ABS( ): absolute value
SELECT payment_id,
	   amount,
       amount*-1 AS 'negative amount',
       ABS(amount*-1)
FROM payment;


-- CEIL( ): rounded up to the nearest integer value
-- FLOOR( ): rounded down to the nearest integer
-- ROUND( ): Rounding upto a decimal point
-- TRUNCATE( ): returns truncated (chops off) number upto a certain decimal place

SELECT payment_id,
	   amount,
       amount*-1 AS 'negative amount',
       ABS(amount*-1),
       CEIL(amount),
       FLOOR(amount),
       ROUND(amount, 1),
       TRUNCATE(amount, 1)
FROM payment;


# POW() OR POWER() outputs same result
-- POW (): raises the expression in to power of an another number
-- POWER(): raises the expression in to power of an another number

SELECT payment_id,
	   amount,
       amount*-1 AS 'negative amount',
       ABS(amount*-1),
       CEIL(amount),
       FLOOR(amount),
       ROUND(amount, 1),
       TRUNCATE(amount, 1),
       POW(payment_id, 3),
       POWER(payment_id, 3)
FROM payment;


-- SQRT(): output square root 

SELECT payment_id,
	   amount,
       amount*-1 AS 'negative amount',
       ABS(amount*-1),
       CEIL(amount),
       FLOOR(amount),
       ROUND(amount, 1),
       TRUNCATE(amount, 1),
       POW(payment_id, 3),
       POWER(payment_id, 3),
       SQRT(payment_id)
FROM payment;


-- Chaining two functions
-- ROUND() and SQRT()
SELECT payment_id,
	   amount,
       amount*-1 AS 'negative amount',
       ABS(amount*-1),
       CEIL(amount),
       FLOOR(amount),
       ROUND(amount, 1),
       TRUNCATE(amount, 1),
       POW(payment_id, 3),
       POWER(payment_id, 3),
       ROUND(SQRT(payment_id), 2)
FROM payment;

-- PI(): adding PI value at each row (into column)
SELECT payment_id,
	   amount,
       amount*-1 AS 'negative amount',
       ABS(amount*-1),
       CEIL(amount),
       FLOOR(amount),
       ROUND(amount, 1),
       TRUNCATE(amount, 1),
       POW(payment_id, 3),
       POWER(payment_id, 3),
       ROUND(SQRT(payment_id), 2),
       PI()
FROM payment;
