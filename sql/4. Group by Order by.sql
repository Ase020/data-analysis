-- GROUP BY

SELECT *
FROM parks_and_recreation.employee_demographics;

-- average age by gender
SELECT gender, AVG(age) as average_age, MAX(age) as max_age, MIN(age) as min_age, COUNT(age) as count
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

-- ORDER BY
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender ASC, age;