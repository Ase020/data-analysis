-- Case Statements
USE parks_and_recreation;

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 40 THEN 'Middle-aged'
    WHEN age BETWEEN 40 AND 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END age_bracket
FROM employee_demographics;

-- Pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

SELECT CONCAT(first_name, " ", last_name) full_name, salary,
CASE
	WHEN salary < 50000 THEN (salary * 0.05) + salary
    WHEN salary > 50000 THEN (salary * 0.07) + salary
END new_salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.1
    WHEN NOT dept_id = 6 THEN 0
END bonus
FROM employee_salary;