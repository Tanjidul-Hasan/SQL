

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
ALTER TABLE AFA.Player
ADD Age int;
select *from AFA.PLayer;
insert into AFA.Player(Age) values(37);
insert into AFA.Player(Age) values(24);
select *from AFA.Player;
SET SQL_SAFE_UPDATES = 0;
Alter table AFA.Player
Add Position varchar(100);
select *from AFA.Player
DELETE FROM AFA.Player
WHERE  JersyNo IS null; 
select *from AFA.Player;
set sql_safe_updates=0;
update AFA.Player
set Position="Forwards"
where JersyNo=10;
update AFA.Player
set Position= "Defenders"
where JersyNo=13;
select *from AFA.Player;
set sql_safe_updates=1;
set sql_safe_updates=1;
SET SQL_SAFE_UPDATES = 0;
UPDATE AFA.Player
SET Age = 37
WHERE JersyNo = 10;

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
insert into AFA.Player(JersyNo,FirstName,ClubName,Age,Position)values(16,' Giovani Lo Celso','Tottenham',29,"Midfielders");
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