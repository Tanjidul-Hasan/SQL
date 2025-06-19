use ims;

-- Query-1: Check product stock levels.
/*Description:
Retrieves the current stock quantity for each product 
by joining the Inventory and Products tables on product_id.*/

select p.product_name,i.quantity
from
(select product_id,Product_name from product)p
join -- here 'join' act as a inner join
(select product_id,quantity from inventory)i
on p.product_id=i.product_id
where p.product_name like '%laptop%';


/* Query 2: Update Stock Levels After Sale or Purchase
Description:
 Updates stock levels after a sale or a purchase.
Sale: Decrease quantity by 3 for product_id = 2 (Desk).
Purchase: Increase quantity by 10 for product_id = 1 (Laptop).
 */
 
 -- after sale
set sql_safe_updates=0;

update inventory
set quantity = quantity-6
where product_id =50295;

-- after purchage
update inventory
set quantity=quantity+6
where product_id=50295;

/*Query 3: View Transaction History for a Product
Description:
Displays transaction type, quantity, and date for 
product_id = 1 (Laptop), showing only relevant
transactions.*/
select product_id,transaction_type,transaction_date,quantity
from transaction
where product_id=50295; -- and transaction_type='purchase'/'sale'

-- if we want to know by product name(partial) and we don't know product_id and even full product name also in that case:

select p.product_name,t.product_id,t.transaction_type,t.transaction_date,t.quantity
from
(select product_id,transaction_type,transaction_date,quantity from transaction)t
join
(select product_id, product_name from product)p
on t.product_id=p.product_id
where p.product_name like '%laptop%';

-- another example:
SELECT t.transaction_type, t.quantity, t.transaction_date
FROM 
(select product_id,transaction_type, quantity, transaction_date from Transaction
Where transaction_type ='Purchase')t
JOIN 
(select Product_id,product_name from product)p 
ON t.product_id = p.product_id
WHERE p.product_name like '%oil%' ;

-- another way
SELECT p.product_name,t.transaction_type, t.quantity, t.transaction_date
FROM transaction t 
join product p
on t.product_id= p.product_id
Where transaction_type ='Purchase' and 
p.product_name like '%oil%' ;

/*Query 4: List Low Stock Products
Description:
Shows products with stock quantity less than 5, 
useful for identifying items needing restocking.*/

select p.product_name,p.product_id,t.quantity
from
transaction t
join 
product p
on t.product_id=p.product_id
where t.quantity<10;

/* Query:5 Generate Monthly Sales Report
Description:
Summarizes total units sold per product during October 2024.*/

select p.product_id,p.product_name,p.category,sum(t.quantity) total_sold
from product p
join transaction t
on p.product_id=t.product_id
where t.transaction_type='sale'-- /'purchase' 
and t.transaction_date between '2024-09-01' and '2024-09-30'
group by p.product_id,p.product_name,p.category;

-- always group by er modde non agregated sob collumn likhte hobe ja select kora hoyeche excepet agregated one.

/*in this query date er khetre ami ekta bishoy kheal korla ami month er range dewar 
khetre oi month e oi date ase kina ta nishchit hobe like ami dila 31-09-2024 but 31 
tarikh oi month er modde nei eta kaj korbena. so eta ekta importatnt issue.*/

/* Query 6: Reorder Products with Low Stock
Description:
Identifies products with inventory less than 5 units for proactive restocking.*/

select p.product_id,i.inventory_id,p.product_name,i.quantity
from
product p
join inventory i
on p.product_id=i.product_id
where i.quantity<10
-- order by i.quantity asc
order by i.quantity desc;


/* Query 7: Add a New Product to Inventory
Description:
Adds a new product (&quot;Monitor&quot;) to the 
Products table and inserts its initial inventory quantity.*/
-- insert data into product table
insert into product
(product_id,product_name,price,Category)
values
(71102,'Laptop',1102.58,'Tech & Gadgets');

-- insert into inventory table using subquery
insert into inventory
(inventory_id,product_id,quantity)
values
(7218,(select product_id from product where product_name='Laptop'),70); -- this nbest one

