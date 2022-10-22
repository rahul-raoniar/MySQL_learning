USE world;


-- GREATEST( ): 
-- Compare values and return the greatest value
-- If any value contains NULL value the function then returns NULL value
-- Applicable to other data types (string)
SELECT GNP,
	   GNPOld,
       GREATEST(GNP, GNPOld) as `Highest`
FROM country;

-- LEAST( ): 
-- Compare values and return the least value
-- If any value contains NULL value the function then returns NULL value
-- Applicable to other data types (string)

SELECT GNP,
	   GNPOld,
       GREATEST(GNP, GNPOld) as `Highest`,
       LEAST(GNP, GNPOld) as `Least`
FROM country;


-- Filling the NULL values using COALESCE()
-- Replacing a BULL value with 100

SELECT GNP,
	   GNPOld,
       GREATEST(GNP, GNPOld) as `Highest`,
       LEAST(GNP, GNPOld) as `Least`,
       COALESCE(GNPOld, 100)
FROM country;


-- ISNULL()

SELECT GNP,
	   GNPOld,
       GREATEST(GNP, GNPOld) as `Highest`,
       LEAST(GNP, GNPOld) as `Least`,
       COALESCE(GNPOld, 100),
       ISNULL(GNPOld)
FROM country;