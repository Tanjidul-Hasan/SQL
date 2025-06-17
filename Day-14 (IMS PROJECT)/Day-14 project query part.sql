use ims

-- Query-1: Check product stock levels.
/*Description:
Retrieves the current stock quantity for each product by joining the Inventory and Products tables on product_id.
select p.product_name,i.quantity*/

from
(select product_id,Product_name from product)p
join -- here 'join' act as a inner join
(select product_id,quantity from inventory)i
on p.product_id=i.product_id;

/* Query 2: Update Stock Levels After Sale or Purchase
Description:
 Updates stock levels after a sale or a purchase.
Sale: Decrease quantity by 3 for product_id = 2 (Desk).
Purchase: Increase quantity by 10 for product_id = 1 (Laptop).
 */
 