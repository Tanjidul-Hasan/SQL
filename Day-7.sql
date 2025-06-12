create database ACI;
use ACI;
create table ACI.Customer
(
C_id int,
C_name varchar(50),
C_adress varchar(50)
);


insert into Customer
(C_id,C_name,C_adress)
values
(101, 'Ashik', 'Dhaka'),
(102, 'Rakib', 'Comilla'),
(103, 'Onik', 'Dhaka'),
(104, 'Mithu', 'Khulna'),
(105, 'Saju', 'Dhaka'),
(106, 'Rahman', 'Chitagong'),
(107, 'Tanvir', 'Khulna'),
(108, 'Niloy', 'Jashor'),
(109, 'Manik', 'Rangpur'),
(110, 'Ashik', 'Sylet');
select *from customer

create table ACI.Payment
(
C_id int,
P_Type varchar(255),
P_Ammount int
);
ALTER TABLE payment RENAME COLUMN P_ammount TO p_amount; -- if we want to edit column name
insert into Payment
(C_id,P_Type,P_Amount)
values
(101, 'COD', 45),
(102, 'Bkash', 82),
(112, 'Bank', 98),
(104, 'COD', 100),
(105, 'Bkash', 112 ),
(111, 'Ukash', 77),
(107, 'COD', 91),
(108, 'Bkash', 922),
(109, 'Bank', 102),
(120, 'Bank', 303);
select *from payment;
/*some time we do wrong data type but column name is ok in this case we can change data type like:
ALTER TABLE table_name MODIFY column_name NEW_DATATYPE;*/

/* if we need to add new column :
ALTER TABLE table_name ADD column_name DATA_TYPE;
Add multiple columns at once (MySQL/PostgreSQL):
ALTER TABLE users 
ADD phone VARCHAR(15),
ADD city VARCHAR(50);
show tables;*/

/* if we need to delet a column :
ALTER TABLE table_name DROP COLUMN column_name;

for multiple delation :
ALTER TABLE users 
DROP COLUMN birthdate,
DROP COLUMN city;
*/



create table ACI.ESM
(C_id int, 
S_Type varchar(255), 
Days int);

insert into ESM
(C_id, S_Type, Days)
values 
(101, 'D', 4),
(102, 'P', 2),
(112, 'D', 8),
(169, 'FD', 10),
(105, 'P', 11 ),
(111, 'D', 7),
(107, 'D', 9),
(108, 'FD', 9),
(109, 'FD', 10),
(120, 'P', 3);
select *from customer;
select *from payment;
select *from esm;

-- from customer and payment table find the total amount according to payment type. 
SELECT 
    p.p_type, SUM(p.p_amount) AS total_amount
FROM
    (SELECT 
        c_id, c_name
    FROM
        customer) AS c
        INNER JOIN
    (SELECT 
        c_id, p_type, p_amount
    FROM
        payment) AS p ON c.c_id = p.c_id
GROUP BY p.p_type
ORDER BY total_amount DESC

-- join cuustomer,payment and esm table and show me c_id,c_name,p_type,p_ammount,s_type,days in one table

SELECT 
    *
FROM
    (SELECT 
        c.c_id, c.c_name, p.p_type, p.p_amount
    FROM
        (SELECT 
        c_id, c_name
    FROM
        customer) AS c
    INNER JOIN (SELECT 
        c_id, p_type, p_amount
    FROM
        payment) AS p ON c.c_id = p.c_id) AS A1
        INNER JOIN
    (SELECT 
        c_id, s_type, days
    FROM
        esm) AS A2 ON A1.c_id = A2.c_id
        
/*ekhane ami ekta 1060 error face korsi karon ami jokhon 1st duita table(customer and payment) ke
 join korsi tokhon select * diye korsi ete kono somossha hoy nai but pore jokhon 3ta table join 
 korte jai se khetre ager duitake ami ekta table name a porinoto kori but ekhon jodi ami inner 
 join kore esm table er sate join korte jai and ager oi all e select kori but condition dei
 A1.c_id e khetre o confused hobe ami kon c_id boltesi as i have two id here one from customer
 another from payment so se error dibe e khetre amra select all na diye ja ja dorkar ta bole
 dibo duita id amdr to dorkar nai tai amra ekta select kore dibo*/
 
-- if i don't want to see c_id two times then the queries should be like this:
 SELECT 
    A1.c_id,A1.c_name,A1.p_type,A1.p_amount,A2.s_type,A2.days
FROM
    (SELECT 
        c.c_id, c.c_name, p.p_type, p.p_amount
    FROM
        (SELECT 
        c_id, c_name
    FROM
        customer) AS c
    INNER JOIN (SELECT 
        c_id, p_type, p_amount
    FROM
        payment) AS p ON c.c_id = p.c_id) AS A1
        INNER JOIN
    (SELECT 
        c_id, s_type, days
    FROM
        esm) AS A2 ON A1.c_id = A2.c_id