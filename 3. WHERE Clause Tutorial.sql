# WHERE clause

select *
from parks_and_recreation.employee_salary
;

select *
from parks_and_recreation.employee_salary
where salary = 70000
;

select first_name, last_name
from parks_and_recreation.employee_salary
where salary >= 50000
;

# AND OR NOT Operator

select first_name, last_name
from parks_and_recreation.employee_salary
where salary >= 50000 and dept_id = 1
;

select *
from parks_and_recreation.employee_salary
where salary <= 60000 or dept_id >= 2
;

select *
from parks_and_recreation.employee_salary
where salary != 60000
;

# LIKE Operator % and _ 

select *
from parks_and_recreation.employee_demographics;

select *
from parks_and_recreation.employee_demographics
where first_name like 'an%'
;

select *
from parks_and_recreation.employee_demographics
where first_name like 'an_'
;

select *
from parks_and_recreation.employee_demographics
where birth_date like '%25'
;

