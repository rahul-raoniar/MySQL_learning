/*
window_function(expression)OVER(
	partition_definition
    order_definition
    frame_definition)
*/

USE world;

SELECT *
FROM country;


#############################################
-- RANK() 
-- Does not maintains chronological/ sequential (jumps)
-- ranking in case of duplicate occurances
#############################################
SELECT Name,
	   Continent,
       LifeExpectancy,
       RANK() OVER (ORDER BY LifeExpectancy DESC) AS 'LE_Rank'
FROM country
ORDER BY LifeExpectancy DESC;


-- Grouping/Partitionning based on Continent
SELECT Name,
	   Continent,
       LifeExpectancy,
       RANK() OVER (PARTITION BY Continent
		            ORDER BY LifeExpectancy DESC) AS 'LE_Rank'
FROM country
ORDER BY Continent, LifeExpectancy DESC;

#############################################
-- DENSERANK() 
-- Maintains chronological/ sequential ranking in case
-- of duplicate occurances
#############################################

SELECT Name,
	   Continent,
       LifeExpectancy,
       RANK() OVER (ORDER BY LifeExpectancy DESC) AS 'LE_Rank',
	   DENSE_RANK() OVER (ORDER BY LifeExpectancy DESC) AS 'LE_Dense_Rank'
FROM country
ORDER BY LifeExpectancy DESC;


#############################################
-- PERCENT_RANK() 
-- Outputs Percentaile Ranking
#############################################
SELECT Name,
	   Continent,
       LifeExpectancy,
       RANK() OVER (ORDER BY LifeExpectancy DESC) AS 'LE_Rank',
	   DENSE_RANK() OVER (ORDER BY LifeExpectancy DESC) AS 'LE_Dense_Rank',
	   PERCENT_RANK() OVER (ORDER BY LifeExpectancy) AS LE_Percent_rank
FROM country
ORDER BY LifeExpectancy DESC;


-- Partitioning by Continent
SELECT Name,
	   Continent,
       LifeExpectancy,
       RANK() OVER (ORDER BY LifeExpectancy DESC) AS 'LE_Rank',
	   DENSE_RANK() OVER (ORDER BY LifeExpectancy DESC) AS 'LE_Dense_Rank',
	   PERCENT_RANK() OVER (PARTITION BY Continent
					        ORDER BY LifeExpectancy) AS LE_Percent_rank
FROM country
ORDER BY Continent, LifeExpectancy DESC;


#############################################
-- ROW_NUMBER() 
-- Outputs Rank Number without Partitionning
#############################################

SELECT Name,
	   Continent,
       LifeExpectancy,
       RANK() OVER (ORDER BY LifeExpectancy DESC) AS `LE_Rank`,
	   DENSE_RANK() OVER (ORDER BY LifeExpectancy DESC) AS `LE_Dense_Rank`,
	   PERCENT_RANK() OVER (PARTITION BY Continent
					        ORDER BY LifeExpectancy) AS `LE_Percent_rank`,
	   ROW_NUMBER() OVER (ORDER BY LifeExpectancy DESC) AS `Row_Num`
FROM country
ORDER BY Continent, LifeExpectancy DESC;

#############################################
-- FIRST_VALUE() 
-- Outputs FIRST Value from the Partitionning
#############################################

SELECT Name,
	   Continent,
       LifeExpectancy,
       RANK() OVER (ORDER BY LifeExpectancy DESC) AS `LE_Rank`,
	   DENSE_RANK() OVER (ORDER BY LifeExpectancy DESC) AS `LE_Dense_Rank`,
	   PERCENT_RANK() OVER (PARTITION BY Continent
					        ORDER BY LifeExpectancy) AS `LE_Percent_rank`,
	   ROW_NUMBER() OVER (ORDER BY LifeExpectancy DESC) AS `Row_Num`,
       FIRST_VALUE(LifeExpectancy) OVER (PARTITION BY Continent
										 ORDER BY LifeExpectancy DESC) AS `First_val`
FROM country
ORDER BY Continent, LifeExpectancy DESC;

#############################################
-- LAST_VALUE() 
-- Outputs LAST Value from the Partitionning
#############################################

-- Lets find and add the Name of the country with lowest LifeExpectancy
SELECT Name,
	   Continent,
       LifeExpectancy,
       RANK() OVER (ORDER BY LifeExpectancy DESC) AS `LE_Rank`,
	   DENSE_RANK() OVER (ORDER BY LifeExpectancy DESC) AS `LE_Dense_Rank`,
	   PERCENT_RANK() OVER (PARTITION BY Continent
					        ORDER BY LifeExpectancy) AS `LE_Percent_rank`,
	   ROW_NUMBER() OVER (ORDER BY LifeExpectancy DESC) AS `Row_Num`,
       LAST_VALUE(Name) OVER (PARTITION BY Continent
										 ORDER BY LifeExpectancy DESC
                                         RANGE BETWEEN
												UNBOUNDED PRECEDING AND
                                                UNBOUNDED FOLLOWING) AS `Last_val`
FROM country
ORDER BY Continent, LifeExpectancy DESC;
