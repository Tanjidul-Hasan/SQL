drop database if exists zepto_inventory ;
create database zepto_inventory;
use zepto_inventory;

select *from zepto_v1
limit 5;

-- count of rows
select count(*) from zepto_v1;

-- How many categories this file have?
select distinct category from zepto_v1;

-- check null values
SELECT 
    *
FROM
    zepto_v1
WHERE
    category IS NULL OR name IS NULL
        OR mrp IS NULL
        OR discountpercent IS NULL
        OR availablequantity IS NULL
        OR discountedsellingprice IS NULL
        OR weightingms IS NULL
        OR outofstock IS NULL
        OR quantity IS NULL;

-- check outofstocks
select distinct outofstock from zepto_v1;
select outofstock,count(outofstock) stock
from zepto_v1
group by outofstock;

-- check total_mrp
select 
sum(a.total_mrp)
from
(select category,sum(mrp) total_mrp 
from zepto_v1
group by category
order by total_mrp desc)a;

-- check products names  those reapeate more than 1
select name, count(name)
from zepto_v1
group by name
having count(name)>1
order by count(name) desc

-- Data Cleaning 
    -- check products with zero price
select *from zepto_v1
where mrp=0
or discountedsellingprice=0;

-- delect product with zero price from the table
set sql_safe_updates=0;
delete from zepto_v1
where mrp=0;

-- correct mrp price and discountsellingprice which are now in paysha
UPDATE zepto_v1 
SET 
    mrp = mrp / 100.0,
    discountedsellingprice = discountedsellingprice / 100.0;
select mrp,discountedsellingprice from zepto_v1
limit 10;

-- Q1 find the top 10 best-value products based on the discount percentage.alter 
select distinct(name),mrp,discountpercent
from zepto_v1
order by discountpercent desc
limit 10;

-- Q2. what are the products with high mrp(e.g:300) but out of stocks
select name,mrp
from zepto_v1
where mrp>300 and outofstock='true'
order by mrp desc;

-- Q3. calculate estimated revenue for each categoy
select category, sum(discountedsellingprice*availablequantity) Revenue
from zepto_v1
group by category
order by revenue desc;

-- Q4. find all products where mrp is greater than 500tk and discount is less than 10%
select name, category,mrp,discountpercent
from zepto_v1
where mrp>500 and discountpercent<10
order by mrp desc;

-- Q5. identify the top 5 categories offering the highest average discount percentage.
select category, avg(discountpercent)AvgDiscountPercent
from zepto_v1
group by category
order by avgdiscountpercent desc
limit 5;

-- Q6. find the price per gram for products above 100g and sort by best value.
select 
distinct name ,
discountedsellingprice,
weightingms,
round(discountedsellingprice/weightingms,2) Price_per_gms 
from zepto_v1
order by price_per_gms;

-- Q7. group the products into categories like Low,Medium,Bulk
select distinct name, weightingms,
case
when weightingms<1000 then 'Low'
when weightingms<5000 then 'Medium'
else 'Bulk'
end as weight_category
from zepto_v1;

-- Q8. what is the total Inventory Weight per category.
select
category, 
sum(availablequantity*weightingms) total_weight 
from zepto_v1
group by category
order by total_weight desc;
