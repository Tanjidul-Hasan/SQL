use ims

-- Query-1: Check product stock levels.
/*Description:
Retrieves the current stock quantity for each product by joining the Inventory and Products tables on product_id.*/

select p.product_name,i.quantity
from
(select product_id,Product_name from product)p
join -- here 'join' act as a inner join
(select product_id,quantity from inventory)i
on p.product_id=i.product_id
where p.product_name like '%laptop%'


/* Query 2: Update Stock Levels After Sale or Purchase
Description:
 Updates stock levels after a sale or a purchase.
Sale: Decrease quantity by 3 for product_id = 2 (Desk).
Purchase: Increase quantity by 10 for product_id = 1 (Laptop).
 */
 -- after sale
set sql_safe_updates=0
update inventory
set quantity = quantity-6
where product_id =50295

-- after purchage
update inventory
set quantity=quantity+6
where product_id=50295

/*Query 3: View Transaction History for a Product
Description:
Displays transaction type, quantity, and date for product_id = 1 (Laptop), showing only relevant
transactions.*/
select product_id,transaction_type,transaction_date,quantity
from transaction
where product_id=50295 -- and transaction_type='purchase'/'sale'

-- if we want to know by product name(partial) and we don't know product_id and even full product name also in that case:
select p.product_name,t.product_id,t.transaction_type,t.transaction_date,t.quantity
from
(select product_id,transaction_type,transaction_date,quantity from transaction)t
join
(select product_id, product_name from product)p
on t.product_id=p.product_id
where p.product_name like '%laptop%'

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


