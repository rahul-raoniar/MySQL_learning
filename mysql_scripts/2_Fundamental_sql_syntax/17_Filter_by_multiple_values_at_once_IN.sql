# In = used to filter by multiple values in a single column

USE world;

-- Obtain all information pertaining to city ID's 100, 200, 300, 400 & 500
SELECT *
FROM city
WHERE ID IN (100, 200, 300, 400, 500);


-- Obtain all information pertaining to cities called London, Manchester or New York
SELECT *
FROM city
WHERE Name IN ('London', 'Manchester', 'New York')
