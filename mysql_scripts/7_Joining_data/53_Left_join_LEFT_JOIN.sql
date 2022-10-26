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

-- Obtain all information from employees table and join to salary table to bring back prior and current salary

SELECT l.*,
       r.prior_salary,
       r.current_salary
FROM employees AS l
LEFT JOIN salary AS r
ON l.emp_id = r.emp_id;


