# Having clause applied to grouped (GROUP BY) data
# If data is not grouped, then it acts like WHERE clause
# HAVING clause should be after GROUP BY and before ORDER BY

USE world;

/* Grouping by region, create a table that shows:
1. The count of countries in each region (call the column country count)
2. The sum of all population within each region (call the column population)
3. The average life expectancy for each region (call the column Average LE)
4. The highest life expectancy within each region (call the column Max LE)
5. The lowest life expectancy within each region (call the column Min LE)
Sort the result by population size (highest to lowest)
*/
SELECT Region,
	   COUNT(Name),
       SUM(Population),
       AVG(LifeExpectancy) AS `Average LE`,
       MAX(LifeExpectancy) AS `Max LE`,
       MIN(LifeExpectancy) AS `Min LE`
FROM country
GROUP BY Region
ORDER BY SUM(Population) DESC;

-- Using the avove query, filter the table for population that are less than 50 million
SELECT Region,
	   COUNT(Name),
       SUM(Population),
       AVG(LifeExpectancy) AS `Average LE`,
       MAX(LifeExpectancy) AS `Max LE`,
       MIN(LifeExpectancy) AS `Min LE`
FROM country
GROUP BY Region
HAVING SUM(Population) <50000000
ORDER BY SUM(Population) DESC;


-- Using the above query, add a second filter to show regions that also have an average life expectancy greater than 70
SELECT Region,
	   COUNT(Name),
       SUM(Population),
       AVG(LifeExpectancy) AS `Average LE`,
       MAX(LifeExpectancy) AS `Max LE`,
       MIN(LifeExpectancy) AS `Min LE`
FROM country
GROUP BY Region
HAVING SUM(Population) <50000000 AND `Average LE`>70
ORDER BY SUM(Population) DESC;