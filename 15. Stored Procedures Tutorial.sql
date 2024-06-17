# Stored Procedures--------
#Used to store complex codes

create procedure Sp1 ()
	select *
    from employee_salary
    where salary >= 70000
;

call Sp1();

# Best Practice

Delimiter $$
create procedure Sp2 ()
Begin
	select *
    from employee_salary
    where salary >= 70000;
    select *
    from employee_demographics
    where age >= 40;
End $$
Delimiter ;

call Sp2();

# Lets add a input parameter and show output based on that

use parks_and_recreation;
drop procedure if exists sp3; # Good practice
Delimiter $$
create procedure Sp3 (employee_id_param int)
Begin
	select first_name, last_name, salary
    from employee_salary
    where employee_id = employee_id_param;
End $$
Delimiter ;

call sp3(2);









