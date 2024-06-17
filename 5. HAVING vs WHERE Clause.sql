# HAVING vs WHERE Clause

select *
from parks_and_recreation.employee_salary
;

select occupation, avg(salary)
from parks_and_recreation.employee_salary
group by occupation
;

select occupation, avg(salary)
from parks_and_recreation.employee_salary
group by occupation
having avg(salary) >= 70000
;

select occupation, avg(salary)
from parks_and_recreation.employee_salary
where dept_id = 1 and first_name like 'a%'
group by occupation
having avg(salary)>10000
;

select occupation, avg(salary), count(dept_id)
from parks_and_recreation.employee_salary
where dept_id= 1
group by occupatixxon
having avg(salary)>50000
;