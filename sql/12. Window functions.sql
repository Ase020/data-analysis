-- Window functions

SELECT gender, AVG(salary) salary
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON sal.employee_id = dem.employee_id
GROUP BY gender;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender) avg_salary
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON sal.employee_id = dem.employee_id;
    
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, SUM(salary) OVER(PARTITION BY gender ORDER BY employee_id) sum_salary
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON sal.employee_id = dem.employee_id;
    
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary, ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON sal.employee_id = dem.employee_id;