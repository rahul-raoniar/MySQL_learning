# LIMIT

USE world;

-- Select first 10 records from the country table
SELECT *
FROM country
LIMIT 10;


-- Select rows 6 to 10 from the country table
SELECT *
FROM country
LIMIT 5, 5;   # first five is the row where we are
              # next 5 is the where we want to go i.e. upto 10


-- What are the top 5 countries with the higest population
SELECT name
FROM country
ORDER BY Population DESC
LIMIT 5;

-- what country has the 6th highest life expectancy
SELECT *
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 5, 1;

# OR
# Use a window function
SELECT *,
	DENSE_RANK() OVER (
		ORDER BY LifeExpectancy DESC
        ) AS `LE_Rank`
FROM country;


-- BONUS - what about the 8th highest? Clue - some may have the same life expectancy
SELECT *
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 7, 1;
