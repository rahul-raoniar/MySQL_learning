USE sakila;

-- Revise the below query to show the average replacement cost by rating before and after discount

# Initial Query
SELECT film_id, 
	   title,
       rental_duration,
       rental_rate,
       length,
       replacement_cost,
       rental_duration + 2 AS `Longer Rental Duration`,          					-- add 2 days to each rental duration and change colun name to 'Longer Rental Duration'
       replacement_cost - 2.99 AS `Replacement Cost Discount`,	 					-- Substract 2.99 from each from each replacement cost and change the name to "Replacement Cost Discount'
       rental_rate * 2 AS `New Rental Rate`,     				 					        -- Double the rental rate and change the column name to 'New Rental Rate'
       rental_rate/rental_duration AS `Cost per day`,            					-- Divide rental_rate by rental duration and change the column to 'Cost per day"
       length DIV 30 AS `Full settings`, 	# OR DIV for Integer Division		-- Divide length  by 30 and change the column name to "Full settings"
       length MOD 30 AS `Final setting`,	# OR MOD	   		 					      -- Calculate length modulo 30 and change column name to 'Final setting'
       'FILM TABLE' AS `Table Name`
FROM film;

# Revised Query
# FORMAT Used for rounding

SELECT rating,
       FORMAT(AVG(replacement_cost),2),
       FORMAT(AVG(replacement_cost - 2.99),2) AS `Replacement Cost Discount`	 					-- Substract 2.99 from each from each replacement cost and change the name to "Replacement Cost Discount'
FROM film
GROUP BY rating;