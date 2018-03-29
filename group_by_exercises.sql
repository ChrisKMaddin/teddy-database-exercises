# In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title
FROM titles;

DESCRIBE titles;
#Find your query for employees whose last names start and end with 'E'.
# Update the query find just the unique last names that start and end with 'E' using GROUP BY.
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.
SELECT
  first_name,
  last_name
FROM employees
WHERE last_name LIKE '%e' AND last_name LIKE 'e%'
  GROUP BY first_name, last_name;

SELECT
  count(*),
  last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count(*) DESC;

SELECT
count(gender) AS amount,
gender
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY gender;
