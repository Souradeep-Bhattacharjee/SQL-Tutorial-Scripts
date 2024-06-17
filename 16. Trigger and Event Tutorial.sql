# Trigger & Event----------

# for any new row addition in employee.salary table it will auto update columns
# in demographic table

select *
from employee_salary
;

Delimiter $$
create trigger emp_insert
	after insert on employee_salary
	for each row
Begin
	insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
END $$
Delimiter ;

#lets test

insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values (13, 'John', 'Jones', 'Analyst', 40000, NULL)
;

select *
from employee_demographics
;


# Event ---------

Delimiter $$
create EVENT del_retired_emp
on schedule every 1 Day
do
begin
	delete
    from employee_demographics
    where age >= 60;
end $$
Delimiter ;
