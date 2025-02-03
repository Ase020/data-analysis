-- UNION

SELECT employee_id, first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION DISTINCT
SELECT employee_id, first_name, last_name
FROM parks_and_recreation.employee_salary
ORDER BY employee_id;

SELECT employee_id, first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION DISTINCT
SELECT employee_id, first_name, last_name
FROM parks_and_recreation.employee_salary
ORDER BY employee_id;

SELECT employee_id, first_name, last_name, 'Old Man' AS label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT employee_id, first_name, last_name, 'Old Lady' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT employee_id, first_name, last_name, 'Highly Paid'
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name;