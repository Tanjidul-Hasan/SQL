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
where gender="M"
