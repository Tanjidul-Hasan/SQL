use employees_mod
select *from t_employees

select count(a.gender)
from
(select gender 
from t_employees
where gender="M") a