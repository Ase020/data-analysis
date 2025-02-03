SELECT * 
FROM parks_and_recreation.employee_demographics 
WHERE (first_name = 'Leslie' AND age = 44) OR  age > 55;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%';

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__';