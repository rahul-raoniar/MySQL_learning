use shop;

-- Observe the employees and salary table
SELECT *
FROM employees;

SELECT *
FROM salary;

/*
STEPS

1. Identify the tables you would like to join (provide a table alias for simplicity)
2. Estublish the type of join required (how do you envision the end result)
3. Estublish joining condition
4. Choose columns of data you want in your single result
*/

-- Obtain all information from salary table and join to employee table to bring back employees first name

SELECT r.*,
	   l.first_name
FROM employees AS l
RIGHT JOIN salary as r
ON l.emp_id = r.emp_id;


