drop database if exists zepto_inventory ;
create database zepto_inventory;
use zepto_inventory;

select *from zepto_v1
limit 5

-- count of rows
select count(*) from zepto_v1

-- check null values
select  * from zepto_v1
where category is null
or 
 name is null
or 
mrp is null
or 
discountpercent is null
or 
availablequantity is null
or 
discountedsellingprice is null
or 
weightingms is null
or 
outofstock is null
or 
quantity is null;


select distinct category from zepto_v1
select distinct outofstock from zepto_v1
select 
sum(a.total_mrp)
from
(select category,sum(mrp) total_mrp 
from zepto_v1
group by category
order by total_mrp desc)a