# Syntax: ( ) = Brackets used to split up and organise condition for improved readability

USE world;

-- How manu cities are called London or Manchester?
SELECT *
FROM city
WHERE
	(Name = 'London' OR Name = 'Manchester');


-- How many cities are called London or Manchaster and have a population of less than 400,000
SELECT *
FROM city
WHERE
	(Name = 'London' OR Name = 'Manchester')
    AND
    (Population < 400000);