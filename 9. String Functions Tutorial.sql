# String Functions ----------

SELECT *
FROM employee_demographics
;

SELECT first_name,
LENGTH(first_name)
FROM employee_demographics
;

SELECT first_name,
UPPER(first_name)
from employee_demographics
;

SELECT first_name,
LOWER(first_name)
from employee_demographics
;

select trim(      'Tom'       );

select Ltrim(      'Tom'       );

select Rtrim(      'Tom'       );

select first_name, replace(first_name,'a','o')
from employee_demographics
;

select first_name, 
replace(first_name,'a','o'),
left(first_name, 2), # pick 2 characters from left
right(first_name,2), # pick 2 characters from right
substring(first_name,2,3) # start from position 2 and pick 3 characters from that
from employee_demographics
;

select locate('o','Tom'); #used to find a particular character

select first_name,
locate ('An',first_name) # output returns true (1) false (0) values
from employee_demographics
;

select first_name, last_name,
concat(first_name,' ', left(last_name, 1)) as Full_Name
from employee_demographics
;
