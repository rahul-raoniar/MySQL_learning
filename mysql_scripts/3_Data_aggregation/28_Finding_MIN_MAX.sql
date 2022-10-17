USE world;

-- What is the highest Life Expectancy of any country in the country database?
SELECT Name, MAX(LifeExpectancy)
FROM country
GROUP BY Name;

-- What is the lowest Life Expectancy of any country in the country dataset
SELECT Name,
	MIN(LifeExpectancy)
FROM country
GROUP BY Name;

-- What is the highest Life Expectancy within each Region in the dataset?
SELECT Region,
	MAX(LifeExpectancy) AS `Highest LE`
FROM country
GROUP BY Region
ORDER BY `Highest LE` DESC;

-- What is the lowest Life Expectancy within each Continent in the dataset?
SELECT Continent, MIN(LifeExpectancy) as `Lowest LE`
FROM country
GROUP BY Continent
ORDER BY `Lowest LE` DESC;

-- BONUS! using the above query, if a result return NULL, replace NULL with 30
-- Replace Null values using COALESCE( ) function
SELECT Continent, 
	   COALESCE(MIN(LifeExpectancy), 30) as `Lowest LE`
FROM country
GROUP BY Continent
ORDER BY `Lowest LE` DESC;


