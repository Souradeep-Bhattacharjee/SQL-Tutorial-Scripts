select *
from parks_and_recreation.employee_demographics
;

# GROUP BY --------------

select gender
from parks_and_recreation.employee_demographics
group by gender
;

select gender, avg(age), max(age), min(age), count(age)
from parks_and_recreation.employee_demographics
group by gender
;

select count(*)
from parks_and_recreation.employee_demographics
;

select *
from parks_and_recreation.employee_salary
;

select count(first_name)
from parks_and_recreation.employee_salary
where salary = 50000
;

select occupation, avg(salary)
from parks_and_recreation.employee_salary
group by occupation
;

select dept_id, avg (salary), max(salary), min(salary), count(first_name)
from employee_salary
group by dept_id
;

# ORDER BY----------------

select *
from parks_and_recreation.employee_demographics
;

select *
from parks_and_recreation.employee_demographics
order by age ASC
;

select *
from parks_and_recreation.employee_demographics
order by age DESC
;

select *
from parks_and_recreation.employee_demographics
order by gender, age
;

select *
from parks_and_recreation.employee_demographics
order by 5, 4
;
# same using column numbers but not recomended-----------

select *
from parks_and_recreation.employee_demographics
order by gender DESC, age DESC
;

