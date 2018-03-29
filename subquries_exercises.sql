use employees;

# Find all the employees with the same hire date as employee 101010 using a sub-query.
# 69 Rows
# SELECT first_name, last_name, birth_date
# FROM employees
# WHERE hire_date IN (
#       SELECT hire_date
#       FROM employees
#   WHERE emp_no = 101010
# );

# Instructors Solution
SELECT * FROM employees
WHERE hire_date = (
  SELECT hire_date FROM employees
  WHERE emp_no = 101010
);





/* Find all the titles held by all employees with the first name Aamod.
314 total titles, 6 unique titles */
SELECT
  t.title AS 'Employee title',
  count(*)
FROM titles AS t
WHERE t.emp_no IN (SELECT e.emp_no
        FROM employees AS e
        WHERE e.first_name = 'Aamod')
GROUP BY t.title;

# Instructors Solution
# SELECT title FROM titles
# WHERE emp_no IN (
#   SELECT emp_no FROM employees
#   WHERE first_name = 'Aamod');

# Find all the titles held by all employees with the first name Aamod.
# SELECT DISTINCT title
# FROM employees
#   JOIN titles
#     ON titles.emp_no = employees.emp_no
# WHERE first_name IN (
#   SELECT first_name
#   FROM employees
#   WHERE first_name = "aamod"
# );

# Find all the current department managers that are female.
SELECT e.first_name, e.last_name
FROM  employees e
WHERE  e.gender = 'F' AND e.emp_no IN (
  SELECT dm.emp_no
  FROM dept_manager AS dm
  WHERE dm.emp_no = e.emp_no AND to_date >= now());

# Instructors Solution
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no FROM  dept_manager
  WHERE to_date > curdate()
)
AND gender = 'F';


# Find the first and last name of the employee with the highest salary.
select first_name, last_name
from employees
  join salaries
    on salaries.emp_no = employees.emp_no
where salary in (
  select max(salary)
  from salaries
);