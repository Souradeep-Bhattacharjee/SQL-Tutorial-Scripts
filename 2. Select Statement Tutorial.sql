select *
from parks_and_recreation.employee_demographics;

select *
from employee_demographics;

select first_name,
age,
gender,
birth_date
from parks_and_recreation.employee_demographics;


select first_name,
age,
age + 1,
gender,
birth_date
from parks_and_recreation.employee_demographics;

# PEMDAS sql follows this rule for math operation

select distinct gender
from parks_and_recreation.employee_demographics;