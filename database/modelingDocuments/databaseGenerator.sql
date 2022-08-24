create table groups (
	id int not null primary key auto_increment,
	name varchar (1)
);
insert into groups (name)
values
	("A"),
	("B"),
	("C"),
	("D"),
	("E"),
	("F"),
	("G"),
	("H");
CREATE TABLE teams (
    id int NOT NULL PRIMARY key AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    flag VARCHAR(255),
    points int,
    goalsFor int,
    goalsAgains int,
    shortName VARCHAR(3) NOT NULL,
    qualOcta int,
    qualQuarter int,
    qualSemi int,
    qualFinal int,
    finalPosition int,
    fifaRank int, 
    groupId int,

    CONSTRAINT FK_groupId_group FOREIGN KEY (groupId)
        REFERENCES groups (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
/*Creacion de tabla de equipos*/
INSERT INTO teams (name, shortName, groupId, fifaRank)
values
	/*Grupo A*/
    ("Qatar", "QAT", 1, 51),
    ("Ecuador", "ECU", 1, 46),
    ("Senegal", "SEN", 1, 20),
    ("Paises Bajos", "NED", 1, 10),
    /*Grupo B*/
    ("Inglaterra", "ENG", 2, 5),
    ("Iran", "IRA", 2, 21),
    ("Estados Unidos", "USA", 2, 15),
    ("Gales", "WAL", 2, 18),
    /*Grupo C*/
    ("Argentina", "ARG", 3, 4),
    ("Arabia Saudita", "SAU", 3, 49),
    ("Mexico", "MEX", 3, 9),
    ("Polonia", "POL", 3, 26),
    /*Grupo D*/
    ("Francia", "FRA", 4, 3),
    ("Australia", "AUS", 4, 42),
    ("Dinamarca", "DEN", 4, 11),
    ("Tunez", "TUN", 4, 35),
    /*Grupo E*/
    ("Expaña", "SPA", 5, 7),
    ("Costa Rica", "CRA", 5, 31),
    ("Alemania", "GER", 5, 12),
    ("Japon", "JAP", 5, 23),
    /*Grupo F*/
    ("Belgica", "BEL", 6, 2),
    ("Canada", "CAN", 6, 38),
    ("Marruecos", "MOR", 6, 24),
    ("Croacia", "CRO", 6, 16),
    /*Grupo G*/
    ("Brasil", "BRA", 7, 1),
    ("Serbia", "SER", 7, 25),
    ("Suiza", "SWI", 7, 14),
    ("Camerun", "CAM", 7, 37),
    /*Grupo H*/
    ("Portugal", "POR", 8, 8),
    ("Uruguay", "URU", 8, 13),
    ("Corea del Sur", "COR", 8, 29),
    ("Ghana", "GHA", 8, 60);
    
    