USE world;

-- What is the total GNP for the entire country dataset
SELECT SUM(GNP)
FROM country;

/*
What is the population for each region? Show the continent each region resides in.
Order the result by Population size (highest first) 
*/
SELECT Region, SUM(Population) AS Pop
FROM country
GROUP BY Region
ORDER BY Pop DESC;

SELECT Continent, Region, SUM(Population) AS `Pop`
FROM country
GROUP BY Continent, Region
ORDER BY `Pop` DESC;

-- Using the query above, filter the result to show the contents Europe and Africa only
SELECT Continent, Region, SUM(Population) AS `Pop`
FROM country
WHERE Continent IN ('Europe', 'Africa')
GROUP BY Continent, Region
ORDER BY `Pop` DESC;