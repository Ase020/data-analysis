
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT 
	dem.employee_id id, 
	CONCAT(dem.first_name, " ", dem.last_name) full_name, 
	dem.age, dem.gender, 
	dem.birth_date, 
	sal.occupation, 
	sal.salary,
	COALESCE(dept.department_name, 'None') department
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
LEFT JOIN parks_departments dept
	ON dept.department_id = sal.dept_id;
    
SELECT 
	dem.employee_id id, 
	CONCAT(dem.first_name, " ", dem.last_name) full_name, 
	dem.age, dem.gender, 
	dem.birth_date, 
	sal.occupation, 
	sal.salary,
	dept.department_name, department
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
LEFT JOIN parks_departments dept
	ON dept.department_id = sal.dept_id;