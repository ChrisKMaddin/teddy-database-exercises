use employees;

SELECT
CONCAT(e.emp_no ' - ', e.last_name, ', ', e.first_name) full_name,
e.birth_date
FROM employees e
LIMIT 10;

SELECT e.emp_no, s.emp_no
FROM employees e, salaries s;

