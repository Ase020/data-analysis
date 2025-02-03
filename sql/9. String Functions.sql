-- String Functions

SELECT employee_id, first_name, LENGTH(first_name) name_length
FROM parks_and_recreation.employee_demographics
WHERE LENGTH(first_name) > 4
ORDER BY name_length;

SELECT UPPER(first_name) first_name, LOWER(last_name) last_name
FROM parks_and_recreation.employee_demographics;

SELECT TRIM("   asejnr  ") trim_string;
SELECT LTRIM("   asejnr  ") trim_string;
SELECT RTRIM("   asejnr  ") trim_string;

SELECT LEFT("Asejunior",3);
SELECT UPPER(RIGHT("Asejunior",6));

SELECT first_name, REPLACE(first_name, 'a', 'z'), SUBSTRING(birth_date, 6, 2) as birth_month
FROM parks_and_recreation.employee_demographics;

SELECT LOCATE('e', 'Nyalenda') locate;

SELECT first_name, last_name, CONCAT(first_name, " ", last_name) full_name
FROM parks_and_recreation.employee_demographics;