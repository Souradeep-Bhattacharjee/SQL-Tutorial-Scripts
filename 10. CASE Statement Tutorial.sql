# CASE Statement----

select *
from employee_demographics
;

# age<30 'Young', age between 30 to 50 'Mid_Age', age >50 'old'

select first_name,
last_name,
age,
CASE
	when age<30 then 'Young'
    when age between 30 and 50 then 'Mid_Age'
    when age>50 then 'Old'
END as Age_Category
from employee_demographics
;

select *
from employee_salary
;

# give hike and find the final salary
# 50000 < 10% , 50000>= 7% < 80000 , 80000>= 5%

select first_name,
last_name,
salary,
CASE
	when salary < 50000 then salary * 1.10
    when salary >= 50000 then salary * 1.07
    when salary >= 80000 then salary * 1.05
END as New_Salary
from employee_salary
;

