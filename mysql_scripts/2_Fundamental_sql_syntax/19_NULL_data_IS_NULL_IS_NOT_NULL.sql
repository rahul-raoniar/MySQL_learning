USE world;

-- Select all information from the country table within the world schema
SELECT * 
FROM country; 


-- How many countries have a NULL life expectancy?
SELECT * 
FROM country
WHERE LifeExpectancy IS NULL; 


-- How many countries are regarded as independent?
SELECT * 
FROM country
WHERE IndepYear IS NOT NULL; 

/* Obtain the Country Name, Head of the State column only for 
Andorra, Anterctica & Australia...
Do any of these countries bring back null values?
Test your answer by filtering all informationin the table
by NULL head of State*/

SELECT Name, HeadOfState
FROM country
WHERE Name IN ('Andorra', 'Antarctica', 'Australia');


SELECT *
FROM country
WHERE HeadOfState IS NULL;

SELECT *
FROM country
WHERE HeadOfState = '';
