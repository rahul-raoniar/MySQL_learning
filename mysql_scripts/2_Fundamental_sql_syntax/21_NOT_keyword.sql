USE world;

-- Select all records from the country table, aprt from Aruba
SELECT *
FROM country
WHERE Name NOT IN ('Aruba');

# OR

SELECT *
FROM country
WHERE NOT Name = 'Aruba';

-- Obtain countries that do not start with latters "A"
SELECT *
FROM country
WHERE Name NOT LIKE "A%";

-- Select all information pertaining to countries that have a surface acrea less than 10 or more than 10 million
SELECT *
FROM country
WHERE SurfaceArea NOT BETWEEN 10 AND 1000000;


-- Select all information for countries that reside outside of europe & Agrica
SELECT *
FROM country
WHERE Continent NOT IN ('Europe', 'Africa');


-- Select all countries that have a life expectancy populated
SELECT *
FROM country
WHERE LifeExpectancy IS NOT NULL;