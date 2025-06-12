use employees_mod
select *from t_employees

select count(a.gender)
from
(select gender 
from t_employees
where gender="M") a

select count(a.gender)
from
(select gender 
from t_employees
where gender="F") a

select 
concat(first_name, " " ,last_name) Full_Name,
gender
from
t_employees
where gender="M";

select 
count(hire_year)
from
(select 
year(hire_date) hire_year
from t_employees)a
where hire_year =2000
