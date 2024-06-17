# UNION ---------- Almost same as JOIN but used to join rows (SELECT statements) insted of columns

SELECT first_name,
last_name
FROM employee_demographics
UNION DISTINCT # BY default UNION is UNION DISTINCT
SELECT first_name,
last_name
FROM employee_salary
;

SELECT first_name,
last_name
FROM employee_demographics
UNION ALL # TO select all the values with duplicates as well
SELECT first_name,
last_name
FROM employee_salary
;

SELECT first_name,
last_name, 'OLD EMP' AS LABEL
FROM employee_demographics
WHERE AGE > 40
UNION
SELECT first_name,
last_name, 'HIGH SAL EMP' AS LABEL
FROM employee_salary
WHERE SALARY >50000
ORDER BY first_name
;
