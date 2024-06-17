# JOINS ------------

select * 
from parks_and_recreation.employee_demographics
;

select *
from parks_and_recreation.employee_salary
;

# INNER JOIN ------- By Default JOIN is INNER JOIN

select *
from employee_demographics as emd
join employee_salary as ems
	on emd.employee_id = ems.employee_id
;

SELECT ems.dept_id,
ems.occupation,
ems.salary,
emd.age
FROM employee_demographics as emd
JOIN employee_salary as ems
	on emd.employee_id = ems.employee_id
;

# OUTER JOIN ---- LEFT JOIN & RIGHT JOIN

SELECT *
FROM employee_demographics as emd
LEFT JOIN employee_salary AS ems
# LEFT JOIN will take the whole table from left and only matching values from right table
	ON emd.employee_id = ems.employee_id
;

SELECT *
FROM employee_demographics AS emd
RIGHT JOIN employee_salary AS ems
# RIGHT JOIN will take the whole table from right and only matching values from right left 
# keeping unmatched values as NULL
	ON emd.employee_id = ems.employee_id
;

# SELF JOIN ------- A table joining with itself

SELECT ems1.occupation, sum(ems1.salary) AS AVG_Salary
FROM employee_salary AS ems1
#JOIN employee_salary AS ems2
	#ON ems1.salary = ems2.salary
GROUP BY ems1.occupation
;

# Multi Table JOIN ---------

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

SELECT *
FROM parks_departments
;

# CASE STUDY: FIND TOTAL SALARY, NO OF PEOPLE, AVG AGE PER DEPT

SELECT PD.department_id, 
PD.department_name,
sum(ES.salary) AS TOTAL_SALARY,
count(ES.first_name) AS NO_OF_EMP,
AVG(ED.age) AS AVG_AGE
FROM parks_departments AS PD
JOIN employee_salary AS ES
	ON PD.department_id = ES.dept_id
JOIN employee_demographics AS ED
	ON ES.employee_id = ED.employee_id
GROUP BY PD.department_id, PD.department_name
ORDER BY TOTAL_SALARY DESC
;



