# ORDER BY = used to order data in ascending or descending order

USE world;


-- Select Name, IndepYear, Population, Life Expectancy from the country table within the world schema
SELECT Name, 
	IndepYear, 
    Population, 
    LifeExpectancy
FROM country;


-- Order the results by Name from Z to A
SELECT Name, 
	   IndepYear, 
       Population, 
       LifeExpectancy
FROM country
ORDER BY Name Desc;

-- Order the result by Population from highest to lowest
SELECT *
FROM country 
ORDER BY Population DESC;


-- Order the results by LifeExpectancy (using LE alias) from highest to lowest
SELECT Name, 
	   IndepYear, 
       Population, 
       LifeExpectancy as LE
FROM country
ORDER BY LE Desc;


-- Order the results by IndepYear (most recent first) and then Population from lowest to highest
SELECT *
FROM country
ORDER BY IndepYear DESC, Population ASC;


-- Recreate the query above by running column number reference
SELECT *
FROM country
ORDER BY 6 DESC, 7 ASC;

# OR Based on current columns selection
# IndepYear: 2 and LifeExpectancy: 3

SELECT Name,
	   IndepYear,
       Population,
       LifeExpectancy
FROM country
ORDER BY 2 DESC, 3 ASC;
