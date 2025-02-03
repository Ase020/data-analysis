-- LIMIT & ALIAS

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2,1;

SELECT gender, AVG(age) average_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING average_age > 40