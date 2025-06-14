
use afa
insert into AFA.Player(JersyNo,FirstName,ClubName) values(10,'Messy','Inter Miami');
insert into AFA.Player(JersyNo,FirstName,ClubName) values(13,'Romero','Tottenham');
SELECT 
    *
FROM
    AFA.Player;
SELECT JersyNo,FirstName FROM AFA.Player;
SELECT FirstName, ClubName 
FROM AFA.Player
WHERE ClubName='Inter Miami';

-- add a new column
ALTER TABLE AFA.Player
ADD Age int;

select *from AFA.PLayer;
insert into AFA.Player(Age) values(37);
insert into AFA.Player(Age) values(24);
select *from AFA.Player;
SET SQL_SAFE_UPDATES = 0;

-- add a new column
Alter table AFA.Player
Add Position varchar(100);

select *from AFA.Player

DELETE FROM AFA.Player
WHERE  JersyNo IS null; 

select *from AFA.Player;
set sql_safe_updates=0;
update AFA.Player
set Position="Forwards"
where JersyNo=10;producttrades
update AFA.Player
set Position= "Defenders"
where JersyNo=13;
select *from AFA.Player;

-- on safe update mode
set sql_safe_updates=1;

-- stop safe update mode
SET SQL_SAFE_UPDATES = 0;

--update a row
UPDATE AFA.Player
SET Age = 37
WHERE JersyNo = 10;

-- update a row
UPDATE AFA.Player
SET Age = 24
WHERE JersyNo = 13;
select *from AFA.Player;

insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(1,'Armani','River Plate',38,"Goalkeepers");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(12,'Rulli','Ajax',32,"Goalkeepers");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(23,'Emiliano Martinez','Aston Vila',32,"Goalkeepers");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(2,'Lucas Martinez','Fiorentina',29,"Defenders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(3,'Nicolas Tagliafico','Lyon',32,"Defenders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(4,'Gonazalo Montiel','Nottingham',28,"Defenders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(6,'Pezzella','Real Betis',33,"Defenders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(8,'Marcos Acuna','Sevilla',33,"Defenders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(19,'Nicolas Otamendi','Benfica',37,"Defenders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(25,'Lisandro Martinez','Manchester United',27,"Defenders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(26,'Nahuel Molina','Atletico Madrid',27,"Defenders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(5,'Leandro Paredes','Roma',30,"Midfielders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(7,'Rodrigo De Paul','Atletico Madrid',30,"Midfielders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(14,'Palacios','Bayer leverkusen',26,"Midfielders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(18,'Rodriguez','Real Betis',31,"Midfielders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(16,'Giovani Lo Celso','Tottenham',29,"Midfielders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(20,'Mac Allister ','Liverpool',26,"Midfielders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(24,' Enzo Fernandez','Chelsea',24,"Midfielders");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(9,'Julian Alvarez','Atletico Madrid',25,"Forwards");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(11,'Angel Di Maria','Benfica',37,"Forwards");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(15,'Nicolas Gonzalez','Fiorentina',27,"Forwards");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(17,'Alejandro Garnacho','Manchester United',20,"Forwards");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(21,'Carboni','Monza',20,"Forwards");
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(22,'Lautaro Martinez','Inter Milan',27,"Forwards");

select *from AFA.Player
select FirstName,Age from AFA.Player 
where ClubName='Atletico Madrid';
use afa
select *from player
-- find player who are more than 30 years old now and count how many are they
SELECT 
    COUNT(a.firstname)
FROM
    (SELECT 
        firstName, clubName, age
    FROM
        player
    WHERE
        age > 30) a

-- find player who are less than 30 years old now.

SELECT 
        firstName, clubName, age
    FROM
        player
    WHERE
        age<30
        
 -- find player who are 25 to 30 years old now.   
SELECT 
        firstName, clubName, age
    FROM
        player
    WHERE
        age between 25 and 30 -- ekhtre choto man age and boro man pore dite hobe
        
-- find player who are playing in forward now
SELECT 
    jersyno, firstname, clubname, age, position
FROM
    player
WHERE
    position = 'forwards'
    
-- find the player list of goalkeepers
SELECT 
    jersyno, firstname, clubname, age, position
FROM
    player
WHERE
    position = 'goalkeepers'

-- find the player list of defenders.
SELECT 
    jersyno, firstname, clubname, age, position
FROM
    player
where
position ="defenders"

-- find the player list of 'Midfielders'.
SELECT 
    jersyno, firstname, clubname, age, position
FROM
    player
WHERE
    position in("midfielders")

select count(jersyno)
from player
select firstname from player

-- add a new column of world_cup_titels
ALTER TABLE player ADD COLUMN world_cup_titles INT;
select *from player

-- fill/update this world_cup_titels column with data/update a whole column
-- as we are using safe update mood so we need to stop it 
set sql_safe_updates=0;
UPDATE player
SET world_cup_titles = CASE firstname
    WHEN 'Messy' THEN 1
    WHEN 'Romero' THEN 1
    WHEN 'Armani' THEN 1
    WHEN 'Lucas Martínez' THEN 0
	WHEN 'Rulli'THEN 1
    WHEN 'Emiliano Martinez'THEN 1
    WHEN 'Nicolas Tagliafico'THEN 1
    WHEN 'Gonazalo Montiel'THEN 1
    WHEN 'Pezzella'THEN 1
    WHEN 'Marcos Acuna' THEN 1
    WHEN 'Nicolas Otamendi' THEN 1
    WHEN 'Lisandro Martinez' THEN 1
    WHEN 'Nahuel Molina' THEN 1
    WHEN 'Leandro Paredes' THEN 1
    WHEN 'Rodrigo De Paul' THEN 1
    WHEN 'Palacios' THEN 1
    WHEN 'Rodriguez' THEN 1
    WHEN ' Giovani Lo Celso' THEN 1
    WHEN 'Mac Allister' THEN 1
    WHEN ' Enzo Fernandez' THEN 1
    WHEN 'Julian Alvarez' THEN 1
    WHEN 'Angel Di Maria' THEN 1
    WHEN 'Nicolas Gonzalez' THEN 1
	WHEN 'Alejandro Garnacho' THEN 0
	WHEN 'Carboni' THEN 0
    WHEN 'Lautaro Martinez' THEN 1
    ELSE 0
END;

-- add a new column of ucl_titels
ALTER TABLE player ADD COLUMN ucl_titles INT;
select *from player

-- fill/update this ucl_titels column with data
-- as we are using safe update mood so we need to stop it 
set sql_safe_updates=0;
UPDATE player
SET ucl_titles = CASE firstname
    WHEN 'Messy' THEN 4
    WHEN 'Romero' THEN 0
    WHEN 'Armani' THEN 0
    WHEN 'Lucas Martínez' THEN 0
	WHEN 'Rulli'THEN 1
    WHEN 'Emiliano Martinez'THEN 0
    WHEN 'Nicolas Tagliafico'THEN 0
    WHEN 'Gonazalo Montiel'THEN 1
    WHEN 'Pezzella'THEN 0
    WHEN 'Marcos Acuna' THEN 1
    WHEN 'Nicolas Otamendi' THEN 0
    WHEN 'Lisandro Martinez' THEN 0
    WHEN 'Nahuel Molina' THEN 0
    WHEN 'Leandro Paredes' THEN 0
    WHEN 'Rodrigo De Paul' THEN 0
    WHEN 'Palacios' THEN 0
    WHEN 'Rodriguez' THEN 0
    WHEN ' Giovani Lo Celso' THEN 0
    WHEN 'Mac Allister' THEN 0
    WHEN ' Enzo Fernandez' THEN 0
    WHEN 'Julian Alvarez' THEN 1
    WHEN 'Angel Di Maria' THEN 1
    WHEN 'Nicolas Gonzalez' THEN 0
	WHEN 'Alejandro Garnacho' THEN 0
	WHEN 'Carboni' THEN 0
    WHEN 'Lautaro Martinez' THEN 0
    ELSE 0
END;
select *from player

-- update a row info
update Player
set Full_name="Lionel Messy"
where JersyNo=10;

update player
set full_Name='Giovani Lo Celso'
where jersyno=16

-- change column name
ALTER TABLE player CHANGE FirstName Full_Name VARCHAR(100);
ALTER TABLE player CHANGE ClubName Club_Name VARCHAR(100);

-- update multiple in a column
UPDATE player
SET Full_Name = CASE Full_Name
    WHEN 'Romero' THEN 'Cristian Romero'
    WHEN 'Armani' THEN 'Franco Armani'
    WHEN 'Lucas Martínez' THEN 'Lucas Martínez Quarta'
	WHEN 'Rulli'THEN 'Gerónimo Rulli'
    WHEN 'Pezzella'THEN 'Germán Pezzella'
    WHEN 'Palacios' THEN 'Exequiel Palacios'
    WHEN 'Rodriguez' THEN 'Guido Rodríguez'
    ELSE 0
END;

