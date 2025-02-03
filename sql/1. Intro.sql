SELECT * FROM parks_and_recreation.employee_demographics WHERE first_name="Jerry";

SELECT * FROM parks_and_recreation.employee_salary WHERE salary >= 50000;

SELECT * FROM parks_and_recreation.employee_demographics WHERE gender = "Male";

SELECT * FROM parks_and_recreation.employee_demographics WHERE gender != "Male";

SELECT * FROM parks_and_recreation.employee_demographics WHERE birth_date > "1985-01-01";

SELECT * FROM parks_and_recreation.employee_demographics WHERE birth_date > "1985-01-01" AND gender = "Male";

SELECT * FROM parks_and_recreation.employee_demographics;