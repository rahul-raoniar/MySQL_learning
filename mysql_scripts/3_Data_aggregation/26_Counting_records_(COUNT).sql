# COUNT 
# COUNT function exclude the NULL values in count

USE world;

-- Select all data from the country table
SELECT *
FROM country;

-- Count the records in the dataset
SELECT COUNT(*) AS `COUNT`
FROM country;

-- Count the records in the dataset that reside in the continent Europe
SELECT COUNT(*) AS COUNT
FROM country
WHERE continent = 'Europe';

-- Prove that COUNT function disregards NULL values
SELECT *
FROM country
WHERE Code IS NOT NULL;

SELECT *
FROM country
WHERE LifeExpectancy IS NOT NULL;

SELECT COUNT(Code), COUNT(LifeExpectancy)
FROM country;

-- How many continents are there?
SELECT COUNT(DISTINCT continent)
FROM country;


-- How many countries reside in each continent and order the count from higest to lowest?
SELECT Continent, COUNT(Name) AS `Country_Count`
FROM country
GROUP BY Continent
ORDER BY Country_Count DESC;

-- Using the previous query, add a second count on the LifeExpectancy to see what continents are missing values
SELECT Continent, 
	COUNT(Name) AS `Country_Count`,
    COUNT(LifeExpectancy)
FROM country
GROUP BY Continent
ORDER BY Country_Count DESC;