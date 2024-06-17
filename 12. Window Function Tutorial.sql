# Window Function ----------

# Lets check the avg salary as per gender using Group By and Window function

Select gender, avg(es.salary) as Avg_Sal
from employee_demographics as ed
join employee_salary as es
	on ed.employee_id = es.employee_id
Group By gender
;

# lets do the same with Window function

select gender, Avg(salary) OVER (partition by gender) as Avg_Sal
from employee_demographics ed
join employee_salary es
	on ed.employee_id = es.employee_id
;

select ed.employee_id, gender, salary, 
sum(salary) OVER (partition by gender order by ed.employee_id ) as Rolling_Sal
from employee_demographics ed
join employee_salary es
	on ed.employee_id = es.employee_id
;

select ed.employee_id, gender, salary, 
row_number() OVER (partition by gender order by es.salary desc) as Row_Num, 
#based on gender providing row number
rank() OVER (partition by gender order by es.salary desc) as Rank_Num,
# if value is same then it will assign same rank and ignore the next number
Dense_rank() OVER (partition by gender order by es.salary desc) as Dense_Rank_Num
# if value is same then it will assign same rank without ignoring the next number
from employee_demographics ed
join employee_salary es
	on ed.employee_id = es.employee_id
;

select gender, count(gender) OVER (partition by gender) as Avg_Sal
from employee_demographics ed
join employee_salary es
	on ed.employee_id = es.employee_id
;