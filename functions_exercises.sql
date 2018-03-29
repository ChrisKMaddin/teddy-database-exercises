USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
Where first_name = 'Irena' OR first_name = 'Vidya' Or first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names who is also male
SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
      AND gender = 'M';

# Find all employees whose last name starts with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

# Find all employees hired in the 90s
SELECT *
FROM  employees
WHERE hire_date >= '1990-01-01' AND hire_date <= '1999-12-31';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
WHERE hire_date LIKE '%199';

#Find all employees born on Christmas
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

# Find all employees with a 'q' in their last name
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# Find all employees whose last name starts or ends with 'E'
SELECT CONCAT(first_name, '', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'e%e'
  AND first_name LIKE 'e%e'
ORDER BY emp_no DESC;

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# Find all employees hired in the 90s and born on Christmas
SELECT *, DATEDIFF(CURDATE(), hire_date) AS 'Days at Company'
FROM employees
WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;


# Find all employees with a 'q' in their last name but not 'qu'
SELECT *
FROM employees
WHERE last_name LIKE '%q' AND last_name NOT LIKE '%qu%';
