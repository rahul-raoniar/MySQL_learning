USE world;

-- Using the world schema, determine how many cities resides in the District Limburg
SELECT * 
FROM city
WHERE District = 'Limburg';


-- Another area of interest in addition to Limburg are cities that are called Birminghum - bring back in the same result set
SELECT * 
FROM city
WHERE 
District = 'Limburg' 
OR 
Name = 'Birmingham';


-- Follwong on from the previous example, City ID 500 should also feed the result set
SELECT * 
FROM city
WHERE 
District = 'Limburg' 
OR 
Name = 'Birmingham'
OR
ID = 500;


-- In addition to the above, we now want to bring back all cities that have a population of less than 600
SELECT * 
FROM city
WHERE 
District = 'Limburg' 
OR 
Name = 'Birmingham'
OR
ID = 500
OR
Population < 600;