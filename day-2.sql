create database BD_Sports;
use BD_Sports;
create table List_BD
(
ID_number int,
name varchar(255),
Age int,
Country varchar(255),
Formet varchar(255),
HS int,
Total_Run int,
Player_Type varchar(255),
Fifty int,
Hundred int,
wicket int,
5wik int,
HRank int
);
select *from List_BD;
insert into List_BD
(ID_number,name,Age,Country,Formet,HS,Total_Run,Player_Type,Fifty,Hundred,wicket,5wik,HRank)
values
(75, 'sakib', 40, 'BD', 'T20', 98, 36464, 'allrounder', 40, 5, 535, 12, 7),
(76, 'tamim', 36, 'BD', 'ODI', 132, 14500, 'batsman', 75, 10, 15, 0, 18),
(77, 'mashrafe', 39, 'BD', 'ODI', 43, 1200, 'bowler', 2, 0, 370, 10, 20),
(78, 'mustafizur', 29, 'BD', 'T20', 30, 400, 'bowler', 1, 0, 180, 5, 33),
(79, 'liton', 30, 'BD', 'Test', 176, 4900, 'batsman', 25, 4, 5, 0, 22),
(80, 'mahmudullah', 37, 'BD', 'T20', 89, 6500, 'allrounder', 30, 2, 150, 4, 19),
(81, 'taskin', 28, 'BD', 'ODI', 28, 800, 'bowler', 1, 0, 170, 3, 31),
(82, 'miraz', 27, 'BD', 'Test', 66, 2400, 'allrounder', 10, 1, 130, 6, 25),
(83, 'afif', 24, 'BD', 'T20', 77, 1800, 'batsman', 12, 0, 25, 0, 40),
(84, 'nasum', 29, 'BD', 'T20', 15, 150, 'bowler', 0, 0, 90, 2, 42),
(85, 'shanto', 26, 'BD', 'ODI', 117, 3400, 'batsman', 18, 3, 2, 0, 29),
(86, 'riyad', 38, 'BD', 'Test', 121, 5100, 'allrounder', 22, 4, 110, 3, 21),
(87, 'soumya', 30, 'BD', 'T20', 88, 3100, 'allrounder', 20, 2, 90, 1, 35),
(88, 'anamul', 31, 'BD', 'ODI', 120, 2700, 'batsman', 10, 1, 0, 0, 44),
(89, 'jubair', 28, 'BD', 'Test', 12, 100, 'bowler', 0, 0, 70, 2, 48),
(90, 'al-amin', 35, 'BD', 'T20', 25, 300, 'bowler', 0, 0, 95, 2, 39),
(91, 'rubel', 34, 'BD', 'ODI', 40, 500, 'bowler', 1, 0, 150, 4, 30),
(92, 'shoriful', 23, 'BD', 'T20', 19, 220, 'bowler', 0, 0, 60, 1, 45),
(93, 'mosaddek', 28, 'BD', 'ODI', 71, 1300, 'allrounder', 6, 0, 55, 1, 37),
(94, 'naim', 25, 'BD', 'T20', 81, 2000, 'batsman', 8, 0, 1, 0, 41),
(95, 'zaker', 24, 'BD', 'ODI', 33, 700, 'wicketkeeper', 2, 0, 0, 0, 46),
(96, 'parvez', 23, 'BD', 'T20', 47, 800, 'batsman', 2, 0, 0, 0, 47),
(97, 'reza', 26, 'BD', 'ODI', 39, 400, 'allrounder', 1, 0, 30, 1, 43),
(98, 'sabbir', 33, 'BD', 'T20', 80, 2200, 'batsman', 10, 1, 5, 0, 38),
(99, 'mominul', 32, 'BD', 'Test', 181, 4500, 'batsman', 12, 6, 1, 0, 23),
(100, 'nasir', 33, 'BD', 'ODI', 92, 1900, 'allrounder', 8, 0, 60, 2, 36),
(101, 'rahim', 38, 'BD', 'Test', 219, 7000, 'wicketkeeper', 35, 9, 0, 0, 13),
(102, 'razzak', 42, 'BD', 'ODI', 26, 600, 'bowler', 0, 0, 207, 5, 26),
(103, 'abdur', 36, 'BD', 'T20', 32, 400, 'bowler', 0, 0, 85, 2, 34),
(104, 'elias', 34, 'BD', 'ODI', 15, 180, 'bowler', 0, 0, 50, 1, 49),
(105, 'nazmul', 29, 'BD', 'ODI', 118, 3500, 'batsman', 14, 2, 0, 0, 28),
(106, 'emrul', 36, 'BD', 'ODI', 130, 3200, 'batsman', 13, 2, 0, 0, 32),
(107, 'shafiul', 36, 'BD', 'T20', 24, 300, 'bowler', 0, 0, 100, 2, 27),
(108, 'robiul', 39, 'BD', 'Test', 10, 80, 'bowler', 0, 0, 45, 2, 50),
(109, 'saif', 24, 'BD', 'ODI', 77, 1600, 'batsman', 6, 0, 2, 0, 43),
(110, 'soumya2', 31, 'BD', 'Test', 104, 2800, 'allrounder', 9, 1, 50, 1, 34),
(111, 'shahidul', 27, 'BD', 'T20', 23, 210, 'bowler', 0, 0, 55, 1, 46),
(112, 'tanzid', 22, 'BD', 'T20', 59, 1100, 'batsman', 4, 0, 0, 0, 39),
(113, 'mehedi', 30, 'BD', 'ODI', 67, 2600, 'allrounder', 10, 1, 140, 3, 24),
(114, 'nurul', 31, 'BD', 'T20', 52, 1500, 'wicketkeeper', 7, 0, 0, 0, 27),
(115, 'asif', 29, 'BD', 'T20', 41, 1000, 'batsman', 2, 0, 0, 0, 44),
(116, 'shuvagata', 33, 'BD', 'Test', 75, 1700, 'allrounder', 6, 0, 60, 1, 35),
(117, 'tanzim', 23, 'BD', 'T20', 29, 350, 'bowler', 0, 0, 45, 1, 48); 
select *from List_BD;

-- Q1: Update the age of player sakib to 41. 
set sql_safe_updates=0;
update List_BD
set Age=41
where Name='sakib';
select Age from List_BD 
where name='sakib' 

-- Q3:Show the players with the highest TOTAL_RUN.
select name,Total_Run 
from List_BD
order by Total_Run desc;

-- Q4: Show the player with the lowest TOTAL_RUN.

-- Q5: What is the total of TOTAL_RUN by all players?
select sum(Total_Run) As Total_Run_All_Players
from List_BD;

-- Q6: How many players have PLAYER_TYPE = 'bowler'?
select count(distinct ID_number)
from List_BD
where Player_Type in('Bowler');

-- Q7: List players who took more than 100 wickets.
select count(distinct ID_number)
select *from List_BD
-- where wicket>100;
where wicket<100;

-- Q8: Show all players who have at least one 5wik.
select *from List_BD
where 5wik!=0;
select *from List_BD;
-- Q9: What's the average age of players?

-- Q10: Change format of tamim to 'Test'?

-- Q11: Remove players whose TOTAL_RUN is less than 100.

-- Q12: Show top 5 highest scores (HS).

-- Q13: List allrounder type players with over 50 wickets.

-- Q14: Who scored the most hundreds?

