# Temp Table-------

create temporary table temp_1
( first_name varchar(30),
last_name varchar(30),
fav_anime varchar(50)
)
;

insert into temp_1
values ('Souradeep','Bhattacharjee','Dragon Ball')
;

select *
from temp_1
;

create temporary table Sal_Over_60k
select *
from employee_salary
where salary >= 60000
;

select *
from Sal_Over_60k
;

# Temp table is only valid during the workbench session


