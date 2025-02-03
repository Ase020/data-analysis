-- JOIN

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT dem.employee_id id, age, occupation
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
LEFT JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
RIGHT JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
-- self join
SELECT 
empl1.employee_id id,
empl1.first_name,
empl1.last_name,
empl2.employee_id empl_santa,
empl2.first_name AS first_name_santa,
empl2.last_name AS last_name_santa
FROM parks_and_recreation.employee_salary empl1
JOIN parks_and_recreation.employee_salary empl2
	ON empl1.employee_id + 1 = empl2.employee_id;

-- Joining multiple tables together
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_and_recreation.parks_departments pd
	ON sal.dept_id = pd.department_id;
    
SELECT *
FROM parks_and_recreation.parks_departments;
