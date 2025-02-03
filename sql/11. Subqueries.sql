-- Subqueries

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM parks_and_recreation.employee_demographics dem
WHERE dem.employee_id IN 
					(SELECT employee_id
						FROM parks_and_recreation.employee_salary sal
                        WHERE sal.dept_id = 1);

SELECT first_name, salary, 
(SELECT AVG(salary)
FROM parks_and_recreation.employee_salary) avg_salary
FROM parks_and_recreation.employee_salary;

SELECT gender, AVG(age) avg, MAX(age) max, MIN(age) min, COUNT(age) count
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT AVG(`MAX(age)`) average_age
FROM 
(SELECT gender, AVG(age) avg, MAX(age), MIN(age) min, COUNT(age) count
FROM parks_and_recreation.employee_demographics
GROUP BY gender) agg_table;
