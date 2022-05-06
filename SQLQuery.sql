


create database adDB;
use adDB;


CREATE TABLE Team(
Id int not null,
Name varchar(50),
primary key(Id)
);


CREATE TABLE Spezialisierung(
Id int not null,
Name varchar(50),
primary key(Id)
);

CREATE TABLE Mitarbeiter(
Id int not null,
Name varchar(50),
Mail varchar(50),
addesiseit datetime,
TeamID int,
primary key(Id),
foreign key(TeamID) references Team(Id)
);

CREATE TABLE MitarbeiterSpezialisierung(
MitarbeiterID int not null,
SpezialisierungID int not null,

primary key(MitarbeiterID,SpezialisierungID),
foreign key(MitarbeiterID) references Mitarbeiter(Id),
foreign key(SpezialisierungID) references Spezialisierung(Id)
);




Select *from Mitarbeiter