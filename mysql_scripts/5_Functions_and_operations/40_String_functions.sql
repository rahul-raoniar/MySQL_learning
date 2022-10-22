USE sakila;

SELECT * 
FROM customer;


-- CONCAT( ) function
SELECT first_name,
       last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`
FROM customer;


-- LOWER( ) function
SELECT first_name,
	   last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`,
       LOWER(CONCAT(first_name, ' ', Last_name)) AS `Full Name Lower`
FROM customer;

-- INSTR( ) function (case insensitive)
-- Return the position of the first match
-- First parameter (the string in which you want to search)
-- Second parameter the string content you want to search

SELECT first_name,
	   last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`,
       LOWER(CONCAT(first_name, ' ', Last_name)) AS `Full Name Lower`,
       INSTR(first_name, 'a')
FROM customer;


-- INSTR( ) function use BINARY to make it (case sensitive)
-- Return the position of the first match
-- First parameter (the string in which you want to search)
-- Second parameter the string content you want to search

SELECT first_name,
	   last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`,
       LOWER(CONCAT(first_name, ' ', Last_name)) AS `Full Name Lower`,
       INSTR(first_name, BINARY 'a')
FROM customer;


-- LENGTH( ) function
SELECT first_name,
	   last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`,
       LOWER(CONCAT(first_name, ' ', Last_name)) AS `Full Name Lower`,
       INSTR(first_name, 'a'),
       LENGTH(last_name)
FROM customer;

-- LEFT() function
-- number of character want to take from left side of the string

SELECT first_name,
	   last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`,
       LOWER(CONCAT(first_name, ' ', Last_name)) AS `Full Name Lower`,
       INSTR(first_name, 'a'),
       LENGTH(last_name),
       LEFT(first_name, 3)
FROM customer;

-- RIGHT() function
-- number of character want to take from right side of the string

SELECT first_name,
	   last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`,
       LOWER(CONCAT(first_name, ' ', Last_name)) AS `Full Name Lower`,
       INSTR(first_name, 'a'),
       LENGTH(last_name),
       LEFT(first_name, 3),
       RIGHT(last_name, 3)
FROM customer;


-- REPLACE(string_col, start position, going upto)
-- Identify a replace a particular string

SELECT first_name,
	   last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`,
       LOWER(CONCAT(first_name, ' ', Last_name)) AS `Full Name Lower`,
       INSTR(first_name, 'a'),
       LENGTH(last_name),
       LEFT(first_name, 3),
       RIGHT(last_name, 3),
       REPLACE(first_name, 'AR', 'AARR')
FROM customer;


-- SUBSET() function
-- Returns specified number of strings from a starting position

SELECT first_name,
	   last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`,
       LOWER(CONCAT(first_name, ' ', Last_name)) AS `Full Name Lower`,
       INSTR(first_name, 'a'),
       LENGTH(last_name),
       LEFT(first_name, 3),
       RIGHT(last_name, 3),
       REPLACE(first_name, 'AR', 'AARR'),
       SUBSTRING(last_name, 2, 3)
FROM customer;


-- SUBSTRING_INDEX( ) 
-- CASE SENSITIVE function
-- Search for a specific string in a given location
-- and return all the letters before of the match string

SELECT first_name,
	   last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`,
       LOWER(CONCAT(first_name, ' ', Last_name)) AS `Full Name Lower`,
       INSTR(first_name, 'a'),
       LENGTH(last_name),
       LEFT(first_name, 3),
       RIGHT(last_name, 3),
       REPLACE(first_name, 'AR', 'AARR'),
       SUBSTRING(last_name, 2, 3),
       SUBSTRING_INDEX(first_name, 'A', 1) # proving 2 means matching at second occurance
FROM customer;


-- LTRIM(): remove white space from left
-- RTRIM(): remove white space from right
-- TRIM(): remove specified characters (uses LEADING, TRILING or BOTH)

SELECT first_name,
	   last_name,
       CONCAT(first_name, ' ', Last_name) AS `Full Name`,
       LOWER(CONCAT(first_name, ' ', Last_name)) AS `Full Name Lower`,
       INSTR(first_name, 'a'),
       LENGTH(last_name),
       LEFT(first_name, 3),
       RIGHT(last_name, 3),
       REPLACE(first_name, 'AR', 'AARR'),
       SUBSTRING(last_name, 2, 3),
       SUBSTRING_INDEX(first_name, 'A', 1), # proving 2 means matching at second occurance
	   LTRIM(first_name),
       RTRIM(first_name),
       TRIM(LEADING "M" FROM first_name),
       TRIM(TRAILING "A" FROM first_name),
       TRIM(BOTH "A" FROM first_name)
FROM customer;
