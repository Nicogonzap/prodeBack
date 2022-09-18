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
    goalsAgainst int,
    shortName VARCHAR(3) NOT NULL,
    qualOcta int,
    qualQuarter int,
    qualSemi int,
    qualFinal int,
    finalPosition int,
    fifaRank int, 
    groupId int,
    foreign key (groupId) references groups (id)
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
    ("España", "SPA", 5, 7),
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

CREATE TABLE groupMatches (
    id int NOT NULL PRIMARY key AUTO_INCREMENT,
    matchDate datetime,
    matchLocation varchar(255),
    homeTeam int,
    awayTeam int,
    homeTeamScore int,
    awayTeamScore int,
    matchRound int,
    groupId int,
    foreign key (groupId) references groups (id),
    foreign key (homeTeam) references teams (id),
    foreign key (awayTeam) references teams (id)
    );


INSERT INTO groupMatches ( matchDate, matchLocation, homeTeam, awayTeam, matchRound, groupId )
values
    /*------------Primera vuelta----------------------*/
    /*1*/("2022-11-21 16:00:00", "Al Bayt Stadium", 1, 2, 1, 1),
    /*2*/("2022-11-21 10:00:00", "Al Thumama Stadium", 3, 4, 1, 1),
    /*3*/("2022-11-21 13:00:00", "Khalifa International Stadium",5, 6, 1, 2),
    /*4*/("2022-11-21 19:00:00", "Ahmad Bin Ali Stadium", 7, 8, 1, 2),
    /*5*/("2022-11-22 19:00:00", "Al Janoub Stadium", 13, 14, 1, 4),
    /*6*/("2022-11-22 13:00:00", "Education City Stadium", 15, 16, 1, 4),
    /*7*/("2022-11-22 16:00:00", "Stadium 974", 11, 12, 1, 3),
    /*8*/("2022-11-22 10:00:00", "Lusail Stadium", 9, 10, 1, 3),
    /*9*/("2022-11-23 19:00:00", "Ahmad Bin Ali Stadium", 21, 22, 1, 6),
    /*10*/("2022-11-23 16:00:00", "Al Thumama Stadium", 17, 18, 1, 5),
    /*11*/("2022-11-23 13:00:00", "Khalifa International Stadium", 19, 20, 1, 5),
    /*12*/("2022-11-23 10:00:00", "Al Bayt Stadium", 23, 24, 1, 6),
    /*13*/("2022-11-24 10:00:00", "Al Janoub Stadium", 27, 28, 1, 7),
    /*14*/("2022-11-24 13:00:00", "Education City Stadium", 30, 31, 1, 8),
    /*15*/("2022-11-24 16:00:00", "Stadium 974", 29, 32, 1, 8),
    /*16*/("2022-11-24 19:00:00", "Lusail Stadium", 25, 26, 1, 7),
    /*------------Segunda vuelta----------------------*/
    /*17*/("2022-11-25 10:00:00", "Ahmad Bin Ali Stadium", 8, 6, 2, 2),
    /*18*/("2022-11-25 13:00:00", "Al Thumama Stadium", 1, 3, 2, 1),
    /*19*/("2022-11-25 16:00:00", "Khalifa International Stadium", 4, 2, 2, 1),
    /*20*/("2022-11-25 19:00:00", "Al Bayt Stadium", 5, 7, 2, 2),
    /*21*/("2022-11-26 10:00:00", "Al Janoub Stadium", 16, 14, 2, 4),
    /*22*/("2022-11-26 13:00:00", "Education City Stadium", 12, 10, 2, 3),
    /*23*/("2022-11-26 16:00:00", "Stadium 974", 13, 15, 2, 4),
    /*24*/("2022-11-26 19:00:00", "Lusail Stadium", 9, 11, 2, 3),
    /*25*/("2022-11-27 10:00:00", "Ahmad Bin Ali Stadium", 20, 18, 2, 5),
    /*26*/("2022-11-27 13:00:00", "Al Thumama Stadium", 21, 23, 2, 6),
    /*27*/("2022-11-27 16:00:00", "Khalifa International Stadium", 24, 22, 2, 6),
    /*28*/("2022-11-27 19:00:00", "Al Bayt Stadium", 17, 19, 2, 5),
    /*29*/("2022-11-28 10:00:00", "Al Janoub Stadium", 28, 26, 2, 7),
    /*30*/("2022-11-28 13:00:00", "Education City Stadium", 31, 32, 2, 8),
    /*31*/("2022-11-28 16:00:00", "Stadium 974", 25, 27, 2, 7),
    /*32*/("2022-11-28 19:00:00", "Lusail Stadium", 29, 30, 2, 8),
    /*------------Tercera vuelta----------------------*/
    /*33*/("2022-11-29 19:00:00", "Ahmad Bin Ali Stadium", 8, 5, 3, 2),
    /*34*/("2022-11-29 19:00:00", "Al Thumama Stadium", 6, 7, 3, 2),
    /*35*/("2022-11-29 15:00:00", "Khalifa International Stadium", 2, 3, 3, 1),
    /*36*/("2022-11-29 15:00:00", "Al Bayt Stadium", 4, 1, 3, 1),
    /*37*/("2022-11-30 15:00:00", "Al Janoub Stadium", 14, 15, 3, 4),
    /*38*/("2022-11-30 15:00:00", "Education City Stadium", 16, 13, 3, 4),
    /*39*/("2022-11-30 19:00:00", "Stadium 974", 12, 9, 3, 3),
    /*40*/("2022-11-30 19:00:00", "Lusail Stadium", 10, 11, 3, 3),
    /*41*/("2022-12-01 15:00:00", "Ahmad Bin Ali Stadium", 24, 21, 3, 6),
    /*42*/("2022-12-01 15:00:00", "Al Thumama Stadium", 22, 23, 3, 6),
    /*43*/("2022-12-01 19:00:00", "Khalifa International Stadium", 20, 17, 3, 5),
    /*44*/("2022-12-01 19:00:00", "Al Bayt Stadium", 18, 19, 3, 5),
    /*45*/("2022-12-02 15:00:00", "Al Janoub Stadium", 32, 30, 3, 8),
    /*46*/("2022-12-02 15:00:00", "Education City Stadium", 31, 29, 3, 8),
    /*47*/("2022-12-02 19:00:00", "Stadium 974", 26, 27, 3, 7),
    /*48*/("2022-12-02 19:00:00", "Lusail Stadium", 28, 25, 3, 7),
    /*------------Octavos----------------------*/
    /*49*/("2022-12-03 15:00:00", null, null, null, 4, null), /*home:1A away:2B*/
    /*50*/("2022-12-03 19:00:00", null, null, null, 4, null), /*home:1C away:2D*/
    /*51*/("2022-12-04 19:00:00", null, null, null, 4, null), /*home:1B away:2A*/
    /*52*/("2022-12-04 15:00:00", null, null, null, 4, null), /*home:1D away:2C*/
    /*53*/("2022-12-05 15:00:00", null, null, null, 4, null), /*home:1E away:2F*/
    /*54*/("2022-12-05 19:00:00", null, null, null, 4, null), /*home:1G away:2H*/
    /*55*/("2022-12-06 15:00:00", null, null, null, 4, null), /*home:1F away:2E*/
    /*56*/("2022-12-06 19:00:00", null, null, null, 4, null), /*home:1H away:2G*/
    /*------------Cuartos----------------------*/
    /*57*/("2022-12-09 19:00:00", null, null, null, 5, null), /*TBD*/
    /*58*/("2022-12-09 15:00:00", null, null, null, 5, null), /*TBD*/
    /*59*/("2022-12-10 19:00:00", null, null, null, 5, null), /*TBD*/
    /*60*/("2022-12-10 15:00:00", null, null, null, 5, null), /*TBD*/
    /*------------Semi----------------------*/
    /*61*/("2022-12-13 19:00:00", null, null, null, 6, null), /*TBD*/
    /*62*/("2022-12-14 19:00:00", null, null, null, 6, null), /*TBD*/
    /*------------Tercer y Cuarto Puesto----------------------*/
    /*63*/("2022-12-17 15:00:00", null, null, null, 6, null), /*TBD*/
    /*------------Final----------------------*/
    /*64*/("2022-12-18 15:00:00", null, null, null, 6, null) /*TBD*/;


CREATE TABLE userTypes (
    id int NOT NULL PRIMARY key AUTO_INCREMENT,
    userType varchar(255)
    );
INSERT INTO userTypes ( userType )
values
    ("admin"),
    ("user");


CREATE TABLE users (
    id int NOT NULL PRIMARY key AUTO_INCREMENT,
    userTypeId int NOT NULL,
    userName varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    pass varchar(255) NOT NULL,
    active int NOT NULL,
    foreign key (userTypeId) references userTypes (id)
    );
INSERT INTO users ( userTypeId, userName, email, pass )
values
    (1, "admin1", "admin@prode.com", "123456"); /*Creates first admin user*/
CREATE TABLE userPredictions (
    id int NOT NULL PRIMARY key AUTO_INCREMENT,
    userId int,
    matchId int,
    homeTeamScore int,
    awayTeamScore int,
    foreign key (matchId) references groupMatches (id),
    foreign key (userId) references users (id)
    );