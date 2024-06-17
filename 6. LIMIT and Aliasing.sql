# LIMIT -------

select *
from parks_and_recreation.employee_salary
LIMIT 5
;

select *
from parks_and_recreation.employee_salary
order by salary DESC
limit 5
;

select *
from parks_and_recreation.employee_salary
order by salary
LIMIT 1, 2
# LIMIT no of rows to skip, no of rows to show
;

#Aliasing---------------

select avg(age) as Avg_Age
from parks_and_recreation.employee_demographics
;

select *
from parks_and_recreation.employee_salary
;

select dept_id, avg(salary) avg_salary
from parks_and_recreation.employee_salary
group by dept_id
having avg_salary > 40000
;