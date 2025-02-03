--- Temporary Tables

CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

INSERT INTO temp_table
VALUES('Felix', 'Olali', 'Interstellar');

SELECT *
FROM temp_table;

SELECT *
FROM parks_and_recreation.employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;
