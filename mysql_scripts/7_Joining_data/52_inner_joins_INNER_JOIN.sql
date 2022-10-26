-- Observe the employees and salary table
USE shop;

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


-- Obtain the emp_id, first_name & last_name from the employee table and salary from the salary table
SELECT 	e.emp_id,
		first_name,
        last_name,
        current_salary
FROM employees as e
INNER JOIN salary as s
ON e.emp_id = s.emp_id;

-- USING command
SELECT 	e.emp_id,
		first_name,
        last_name,
        current_salary
FROM employees as e
INNER JOIN salary as s
USING (emp_id);			# USING is used when key name on both tables is common/same


-- Rename the salary table emp_id column to employee_id and conduct the same join as previous example
ALTER TABLE salary
CHANGE COLUMN emp_id employee_id INT NOT NULL;

# using alias for table in all column
SELECT 	e.emp_id,
		e.first_name,
        e.last_name,
        s.current_salary
FROM employees as e
INNER JOIN salary as s
ON e.emp_id = s.employee_id;

