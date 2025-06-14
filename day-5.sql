-- Drop the existing database if it exists.
drop database if exists BusinessTradeDB;
-- create a new database
create database Trades;
-- use the newly created database
use Trades;
-- create the Table
create table ProductTrades
(
TradeID INT PRIMARY KEY AUTO_INCREMENT,
PrimaryProductID VARCHAR(50),
GMV DECIMAL(12, 2), -- Gross Estimated Value
NMV DECIMAL(12, 2), -- Net Market Value
GIS DECIMAL(12, 2), -- Gross Invoice Sale
GOS DECIMAL(12, 2), -- Gross Order Sale
Area VARCHAR(100),
Category VARCHAR(100),
ShippingRate DECIMAL(10, 2),
ShippingCost DECIMAL(10, 2),
PoRate DECIMAL(10, 2) -- Purchase Order Rate
);
-- insert data into table
INSERT INTO 
ProductTrades 
(PrimaryProductID, GMV, NMV, GIS, GOS, Area, Category,ShippingRate, ShippingCost, PoRate) 
VALUES
('PROD001', 17982.55, 16944.73, 16882.91, 16074.51,'Barishal','Laptop', 5.44, 5.74,16048.16),
('PROD002', 20539.88, 19472.06, 18954.12, 18328.98,'Chittagong','Health and Beauty',4.17, 4.49, 18584.92),
('PROD003', 17588.11, 16125.24, 15898.15, 15369.83, 'Rajshahi','Men Fashion', 5.97, 5.64,15313.12),
('PROD004', 16144.36, 14998.61, 14874.00, 14153.12, 'Khulna', 'Mobile', 3.95, 4.34,14265.45),
('PROD005', 14571.22, 13726.56, 13341.80, 12867.71, 'Dhaka','Grocery', 4.68, 4.41,13017.94),
('PROD006', 19215.19, 17811.70, 17645.60, 16623.88, 'Chittagong','Home Decoration',6.00, 6.11, 16894.62),
('PROD007', 15812.77, 14588.40, 14362.59, 13429.16, 'Barishal', 'Women Fashion', 5.12,5.22, 13933.38),
('PROD008', 17346.83, 15901.03, 15768.27, 15045.34,'Rajshahi','Motors', 4.25, 4.01,15201.85),
('PROD009', 18777.48, 17455.21, 17015.89, 16220.70, 'Khulna', 'Laptop', 6.35, 6.22,16501.36),
('PROD010', 19825.03, 18299.87, 18111.66, 17402.94, 'Dhaka', 'Health and Beauty', 4.09,4.46, 17483.13),
('PROD011', 16455.68, 15345.10, 14934.12, 14029.33, 'Chittagong','Mobile', 5.31, 5.21,14500.61),
('PROD012', 15232.90, 14114.83, 13891.45, 13155.84, 'Barishal','Grocery', 3.72, 3.98,
13444.80),('PROD013', 17782.42, 16599.55, 16299.34, 15673.99, 'Rajshahi', 'Motors', 4.87, 5.00,15789.24),
('PROD014', 13991.60, 12811.03, 12611.44, 11944.77, 'Khulna','Men Fashion', 3.33, 3.45,12214.68),
('PROD015', 16875.10, 15744.82, 15400.89, 14877.91, 'Dhaka','Women Fashion', 5.56, 5.61,15013.27),
('PROD016', 18233.99, 17056.89, 16755.43, 16011.23, 'Chittagong', 'Home Decoration',4.73, 4.80, 16234.42),
('PROD017', 19644.70, 18122.33, 17766.54, 17089.65, 'Barishal', 'Laptop', 6.02, 6.25,17110.24),
('PROD018', 14200.80, 13231.17, 12877.90, 12145.55, 'Rajshahi', 'Grocery', 4.45, 4.68,12541.62),
('PROD019', 16522.36, 15345.71, 15001.04, 14295.99, 'Khulna','Mobile', 3.88, 4.10,14479.87),
('PROD020', 15477.29, 14355.22, 14122.39, 13511.78, 'Dhaka','Health and Beauty', 5.18,5.35, 13640.44),
('PROD021', 17221.75, 16032.91, 15720.48, 14985.67, 'Dhaka', 'Mobile', 4.88, 5.03,15201.56),
('PROD022', 18977.12, 17643.78, 17400.59, 16811.34, 'Chittagong', 'Laptop', 6.20, 6.35,16897.72),
('PROD023', 16034.88, 14877.14, 14502.13, 13856.29, 'Rajshahi','Men Fashion', 3.79, 3.95,14101.40),
('PROD024', 14123.57, 13102.33, 12789.22, 12100.11, 'Khulna', 'Grocery', 4.11, 4.21,12300.89),
('PROD025', 18550.99, 17114.42, 16987.44, 16199.34, 'Barishal','Home Decoration', 5.67,5.73, 16255.21),
('PROD026', 15332.44, 14250.77, 14033.88, 13455.92, 'Dhaka', 'Health and Beauty', 4.33,4.55, 13622.31),
('PROD027', 16890.28, 15502.41, 15388.15, 14766.42, 'Chittagong', 'Women Fashion', 5.92,6.01, 14888.90),
('PROD028', 19844.66, 18344.09, 18122.87, 17344.11, 'Rajshahi','Motors', 5.44, 5.77,17401.83),
('PROD029', 14489.01, 13478.66, 13290.44, 12566.78, 'Khulna', 'Grocery', 3.56, 3.68,12777.94),
('PROD030', 16199.83, 14984.32, 14677.99, 14088.45, 'Barishal','Mobile', 4.79, 4.94,14234.87),
('PROD031', 18324.11, 17245.32, 16890.54, 16234.76,'Dhaka','Laptop', 6.12, 6.30,16532.29),
('PROD032', 15988.45, 14678.54, 14455.32, 13822.11, 'Chittagong','Women Fashion', 4.84,4.93, 13922.71),
('PROD033', 17234.77, 15899.43, 15566.22, 14889.77, 'Rajshahi', 'Men Fashion', 5.55, 5.74,14988.62),
('PROD034', 14101.23, 13087.34, 12894.56, 12277.21, 'Khulna', 'Grocery', 3.99, 3.89,12450.33),
('PROD035', 19487.66, 18101.55, 17900.32, 17155.44, 'Barishal','Motors', 6.33, 6.28,17200.98),
('PROD036', 16111.89, 14900.42, 14732.55, 14089.33, 'Dhaka', 'Mobile', 4.57, 4.72,14231.21),
('PROD037', 17777.77, 16544.00, 16222.88, 15443.65, 'Chittagong', 'Health and Beauty',5.18, 5.29, 15600.49),
('PROD038', 18654.21, 17201.65, 16898.33, 16055.00,'Rajshahi','Home Decoration', 4.40,4.38, 16222.73),
('PROD039', 15442.88, 14420.55, 14189.34, 13555.21, 'Khulna','Grocery', 3.95, 3.87,13744.55),
('PROD040', 16700.12, 15500.01, 15166.98, 14677.44, 'Barishal','Laptop', 5.66, 5.64,14788.71),
('PROD041', 13987.43, 12800.55, 12600.12, 11887.33, 'Dhaka', 'Women Fashion', 4.10, 4.15,12111.66),
('PROD042', 17611.76, 16123.89, 15945.66, 15188.99, 'Chittagong','Men Fashion', 5.92,5.99, 15322.44),
('PROD043', 15010.44, 13988.11, 13655.78, 12988.11, 'Rajshahi','Mobile', 4.05, 4.22,13221.56),
('PROD044', 16321.00, 15244.88, 15000.00, 14233.66, 'Khulna', 'Grocery', 4.67, 4.63,14311.09),
('PROD045', 18899.23, 17542.19, 17255.33, 16600.10, 'Barishal', 'Motors', 6.10, 6.33,16745.88),
('PROD046', 16000.66, 14944.12, 14678.54, 14001.23, 'Dhaka', 'Laptop', 4.21, 4.43,14110.32),
('PROD047', 17119.77, 15800.10, 15567.89, 14788.44, 'Chittagong','Men Fashion', 5.21,5.15, 15000.66),
('PROD048', 14300.32, 13222.77, 13011.34, 12466.23, 'Rajshahi','Grocery', 3.89, 3.77,12588.55),
('PROD049', 16999.99, 15600.11, 15333.00, 14721.55, 'Khulna','Health and Beauty', 5.43,5.48, 14988.11),
('PROD050', 15788.66, 14567.23, 14388.54, 13655.44, 'Barishal','Women Fashion', 4.78,4.74, 13900.87),
('PROD051', 18567.43, 17234.87, 16944.32, 16123.45, 'Dhaka', 'Laptop', 5.67, 5.82,16350.11),
('PROD052', 14345.66, 13100.34, 12855.12, 12234.78, 'Chittagong', 'Grocery', 4.33, 4.41,12400.23),
('PROD053', 16700.98, 15488.11, 15100.76, 14500.12,'Rajshahi','Women Fashion', 4.78,4.83, 14677.33),
('PROD054', 19322.44, 18100.56, 17888.44, 17101.77, 'Khulna', 'Motors', 6.45, 6.35,17200.12),
('PROD055', 15888.12, 14555.32, 14299.87, 13622.45, 'Barishal','Men Fashion', 4.95, 5.01,13844.11),
('PROD056', 17201.22, 16034.76, 15833.21, 15100.44, 'Dhaka', 'Mobile', 4.20, 4.30,15322.90),
('PROD057', 16011.45, 14822.99, 14566.55, 13888.88, 'Chittagong','Health and Beauty',4.69, 4.75, 14001.12),
('PROD058', 14899.34, 13645.12, 13400.55, 12700.78, 'Rajshahi','Grocery', 3.88, 4.00,12877.99),
('PROD059', 17455.89, 16234.56, 15977.23, 15322.10, 'Khulna', 'Laptop', 5.53, 5.61,15550.01),
('PROD060', 13888.77, 12644.88, 12433.56, 11800.44, 'Barishal','Grocery', 3.77, 3.89,12000.76),
('PROD061', 16444.22, 15222.33, 14999.87, 14322.67, 'Dhaka','Women Fashion', 4.33, 4.36,14501.44),
('PROD062', 18777.43, 17300.11, 17023.99, 16200.88, 'Chittagong', 'Motors', 5.90, 6.05,16400.55),
('PROD063', 15988.66, 14644.77, 14345.11, 13677.99, 'Rajshahi','Mobile', 4.45, 4.49,13822.33),
('PROD064', 17111.23, 15766.44, 15500.87, 14845.22,'Khulna','Men Fashion', 5.22, 5.30,14988.90),
('PROD065', 15345.78, 14012.55, 13788.90, 13101.34,'Barishal','Health and Beauty', 4.01,4.16, 13300.50),
('PROD066', 16666.44, 15322.33, 15099.11, 14400.56, 'Dhaka','Laptop', 5.44, 5.39,14577.33),
('PROD067', 14555.90, 13300.88, 13077.22, 12466.12,'Chittagong','Grocery', 3.95, 3.87,12644.55),
('PROD068', 17987.23, 16545.11, 16234.00, 15500.44, 'Rajshahi', 'Women Fashion', 5.81,5.75, 15701.88),
('PROD069', 19123.56, 17800.43, 17555.99, 16888.22, 'Khulna', 'Motors', 6.01, 6.10,17011.66),
('PROD070', 15588.11, 14300.44, 14066.78, 13422.11, 'Barishal','Home Decoration', 4.20,4.18, 13611.33);
-- select whole table 
select *from ProductTrades;
-- check in how many area this company making their sales. 
select distinct Area
from ProductTrades;
-- if we want to do a multi line comments we can do this  with /* ----*/

/* make a category_group of category like following:
Grocery, Health and Beauty = FMCG
Men Fashion , Women Fashion = Fashion
Mobile,Laptop = EL
Motors, Home Decoration= GM
*/
select distinct
 CASE 
        WHEN Category IN ('Grocery' , 'Health and Beauty') THEN 'FMCG'
        WHEN Category IN ('Men Fashion' , 'Women Fashion') THEN 'Fashion'
        WHEN Category IN ('Mobile' , 'Laptop') THEN 'EL'
        WHEN Category IN ('Motors' , 'Home Decoration') THEN 'GM'
    END AS Category_group
from producttrades

/*1. What is the total GEV for each category (FMCG, Fashion, EL, GM)?
Grocery, Health and Beauty = FMCG
Men Fashion , Women Fashion = Fashion
Mobile,Laptop = EL
Motors, Home Decoration= GM
*/

SELECT 
    sum(GMV) as GMV,
    CASE -- onkgulor poriborte ekta dat chaile ei style e kora jay.
        WHEN Category IN ('Grocery' , 'Health and Beauty') THEN 'FMCG'
        WHEN Category IN ('Men Fashion' , 'Women Fashion') THEN 'Fashion'
        WHEN Category IN ('Mobile' , 'Laptop') THEN 'EL'
        WHEN Category IN ('Motors' , 'Home Decoration') THEN 'GM'
    END AS Category_group
FROM
    ProductTrades
GROUP BY Category_group
ORDER BY SUM(GMV) DESC;

/* 
2.What is the total PO Price for each category?
Grocery, Health and Beauty = FMCG
Men Fashion , Women Fashion = Fashion
Mobile,Laptop = EL
Motors, Home Decoration= GM
*/
SELECT 
    SUM(PoRate) as PO_Price,
    CASE
        WHEN Category IN ('Grocery' , 'Health and Beauty') THEN 'FMCG'
        WHEN Category IN ('Men Fashion' , 'Women Fashion') THEN 'Fashion'
        WHEN Category IN ('Mobile' , 'Laptop') THEN 'EL'
        WHEN Category IN ('Motors' , 'Home Decoration') THEN 'GM'
    END AS Category_group
FROM
    ProductTrades
GROUP BY Category_group
order by PO_Price desc;

/*
3. Which category has the highest GMV contribution?
4. What is the commission (GMV - PO Price) for each category?
5. What is the profitability for each category?
6. Which area has the highest GMV contribution?
7. Which area has the highest contribution to the PO Price?
8. What is the total GMV by area?
9. What is the total PO Price by area?
10. Which area has the highest profitability?
11. What is the commission for each area?
12. Which category has the highest shipping rate on average?
13. What is the average shipping cost for each category?
14. Which category has the highest profit margin?
15. What is the total commission for each area?
*/
-- 3. Which category has the highest GMV contribution?
select category, sum(GMV) highest_GMV
from producttrades
group by category
order by highest_GMV desc
limit 1;

-- 4. What is the commission (GMV - PO Price) for each category?
select 
category,
sum(GMV)-sum(porate) Commission
from producttrades
group by category;

-- 6. Which area has the highest GMV contribution?
select
area,
sum(GMV) highst_GMV
from producttrades
group by area
order by highst_GMV desc
limit 1;

-- 7. Which area has the highest contribution to the PO Price?
select area, sum(porate)total_po_price
from
producttrades
group by area
order by total_po_price desc
limit 1;

-- 8. What is the total GMV by area?
select area, sum(GMV) Total_GMV
from producttrades
group by area
order by total_gmv desc;

-- 9. What is the total PO Price by area?
select area, sum(porate)total_po_price
from
producttrades
group by area
order by total_po_price desc;

-- 13. What is the average shipping cost for each category?
select 
category, 
avg(shippingcost) Average_Shipping_Cost
from producttrades
group by category
order by Average_Shipping_Cost;


select *from producttrades;
select area,sum(GMV)-sum(PoRate),(sum(GMV)-sum(PoRate))/sum(GMV)*100 as profit_margin
from ProductTrades
group by area
order by profit_margin desc
