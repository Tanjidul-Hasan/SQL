drop database if exists zepto_inventory ;
create database zepto_inventory;
use zepto_inventory;
select *from zepto_v1

select distinct category from zepto_v1
select distinct outofstock from zepto_v1
select 
sum(a.total_mrp)
from
(select category,sum(mrp) total_mrp 
from zepto_v1
group by category
order by total_mrp desc)a