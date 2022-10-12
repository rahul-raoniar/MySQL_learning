# LIKE: used to filter a column with a wildcard search
# % = used to represent any number of characters
# _ = used to represent a single character


USE world;

-- LIKE '%'

# start with a
SELECT *
FROM country
WHERE Name LIKE 'a%';

# ends with d
SELECT *
FROM country
WHERE Name LIKE '%d';

# contains ric
SELECT *
FROM country
WHERE Name LIKE '%ric%';

-- LIKE '_'

# four characters
SELECT *
FROM country
WHERE Name LIKE '____';

/* four characters where second and third character contains
ra*/

SELECT *
FROM country
WHERE Name LIKE '_ra_';

/* Start with any letter then contains ra and then any 
combination of letters*/

SELECT *
FROM country
WHERE Name LIKE '_ra%';


-- REGEXP
SELECT *
FROM country
WHERE Name REGEXP '^[A-C]';
