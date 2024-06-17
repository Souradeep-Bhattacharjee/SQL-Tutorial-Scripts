# CTEs------
# Works like Sub-queries but more efficient

# Find gender wise avg salary, Max salary, min salary and count of emp
# Using 1. group by and 2. CTE

select gender, avg(salary) as Avg_Sal, max(salary) as Max_Sal, min(salary) as Min_Sal,
count(salary)
from employee_demographics ed
join employee_salary es
	on ed.employee_id = es.employee_id
group by gender
;

With CTE_1 As
(
select gender, avg(salary) as Avg_Sal, max(salary) as Max_Sal, min(salary) as Min_Sal,
count(salary)
from employee_demographics ed
join employee_salary es
	on ed.employee_id = es.employee_id
group by gender
)
Select *
from CTE_1
;

# Now from the gender wise Avg_Sal find the overall gender avg sal
# Using 1. CTE and 2. Sub-query

# Using CTE
With CTE_1 As
(
select gender, avg(salary) as Avg_Sal, max(salary) as Max_Sal, min(salary) as Min_Sal,
count(salary)
from employee_demographics ed
join employee_salary es
	on ed.employee_id = es.employee_id
group by gender
)
Select avg(Avg_Sal)
from CTE_1
;

# Using Subquery
select avg(Avg_Sal)
from
(
select gender, avg(salary) as Avg_Sal, max(salary) as Max_Sal, min(salary) as Min_Sal,
count(salary)
from employee_demographics ed
join employee_salary es
	on ed.employee_id = es.employee_id
group by gender
) as Sub_query
;

# CTEs can only be run immediatelly after the select query
# We can use multiple CTEs as well

With CTE_1 As
(
	select employee_id, first_name, last_name, gender
	from employee_demographics ed
	where age > 30
),
CTE_2 as
(
	Select employee_id, salary
    from employee_salary
)
Select *
from CTE_1
join CTE_2
	on CTE_1.employee_id = CTE_2.employee_id
;






