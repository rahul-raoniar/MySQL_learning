# Syntax List
-- BETWEEN used to filter a column by a defined range

USE world;

-- Obtain all information partaining all city ID's between 500 and 525
SELECT *
FROM city
WHERE ID BETWEEN 500 AND 525;


-- Obtain all information partining cities with population between 1000 and 2000
SELECT * 
FROM city
WHERE Population BETWEEN 1000 AND 2000;