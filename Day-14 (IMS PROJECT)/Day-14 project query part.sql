use ims

-- Query-1: Check product stock levels.

select p.product_name,i.quantity
from
(select product_id,Product_name from product)p
join -- here 'join' act as a inner join
(select product_id,quantity from inventory)i
on p.product_id=i.product_id;

