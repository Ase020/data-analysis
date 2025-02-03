-- Stored Procedures

USE parks_and_recreation;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

DELIMITER $$
CREATE PROCEDURE large_salaries()
BEGIN
	SELECT *
	FROM parks_and_recreation.employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM parks_and_recreation.employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries2(emp_id INT)
BEGIN
	SELECT employee_id, first_name, salary
	FROM parks_and_recreation.employee_salary
	WHERE employee_id = emp_id;
END $$
DELIMITER ;

CALL large_salaries2(1);


