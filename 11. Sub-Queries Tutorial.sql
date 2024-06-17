# Sub-Queries-----

select *
from employee_salary
;

select Avg(Avg_Sal)
from
	(select dept_id, Avg(salary) as Avg_Sal
		from employee_salary
        group by dept_id
) as Sub_query1
;

# Find all the employees from dept 3 using demographic table

select *
from employee_demographics
where employee_id in
				(select employee_id
					from employee_salary
                    where dept_id = 3)
;
			