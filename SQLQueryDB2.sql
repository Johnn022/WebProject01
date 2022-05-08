


create database adDB;
use adDB;


CREATE TABLE Team(
Id int IDENTITY(1,1) PRIMARY KEY,
Name varchar(50),
--primary key(Id)
);


CREATE TABLE Spezialisierung(
--Id int NOT NULL AUTO_INCREMENT,
Id int IDENTITY(1,1) PRIMARY KEY,
Name varchar(50),
--primary key(Id)
);

CREATE TABLE Mitarbeiter(
--Id int NOT NULL AUTO_INCREMENT,
Id int IDENTITY(1,1) PRIMARY KEY,
Name varchar(50),
Mail varchar(50),
addesiseit datetime,
TeamID int,
SpezialisierungID int,
foreign key(TeamID) references Team(Id),
foreign key(SpezialisierungID) references Spezialisierung(Id)
);

--CREATE TABLE MitarbeiterSpezialisierung(
--MitarbeiterID int not null,
--SpezialisierungID int not null,

--primary key(MitarbeiterID,SpezialisierungID),
--foreign key(MitarbeiterID) references Mitarbeiter(Id),
--foreign key(SpezialisierungID) references Spezialisierung(Id)
--);




Select *from Mitarbeiter
Select *from Team;

SELECT m.Id,m.Name,m.Mail,m.addesiseit,t.Name,s.Name
FROM Mitarbeiter as m
INNER JOIN Team  as t ON m.TeamID = t.Id
INNER JOIN Spezialisierung as s ON m.SpezialisierungID = s.Id;


CREATE VIEW MitarbeiterListView
AS   
SELECT m.Id,m.Name,m.Mail,m.addesiseit,t.Name as Team,s.Name as Spezialisierung
FROM Mitarbeiter as m
INNER JOIN Team  as t ON m.TeamID = t.Id
INNER JOIN Spezialisierung as s ON m.SpezialisierungID = s.Id;

select *from MitarbeiterListView;
