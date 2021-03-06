//Table f�r Kunde
CREATE TABLE Kunde(
				ID INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) PRIMARY KEY,
				Vorname VARCHAR(30) NOT NULL,
				Nachname VARCHAR(30) NOT NULL,						
				Strasse VARCHAR(30),						
				Plz INTEGER CHECK ((plz <99999) AND (plz >1000)),
				Ort VARCHAR(30),
				Geburtsdatum DATE,
				Geschlecht VARCHAR(8) CHECK ((geschlecht='Maenlich') OR (geschlecht='Weiblich')));

						
INSERT INTO Kunde VALUES(DEFAULT,'THOMAS','LEHNER','Str1',10001,'Wien','1980-01-26','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'ANDREAS','BAUER','Str2',10002,'Wien','1975-08-18','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'RAPHAEL','BERAN','Str3',10003,'Wien','1976-05-05','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'MANUEL','HUBER','Str4',10004,'Wien','1981-02-19','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'MATTHIAS','BRAUN','Str5',10005,'Wien','1968-04-25','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'GEORG','�TZEL','Str6',10006,'Wien','1950-01-07','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'ANDREAS','DIETMEIER','Str7',10007,'Wien','1970-02-11','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'MARKUS','SCHWARZ','Str8',10008,'Wien','1973-04-10','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'ANTHON','LEICHT','Str9',10009,'Wien','1977-09-21','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'MANUEL','EIBL','Str10',10010,'Wien','1981-12-25','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'HELENE','KASTNER','Str11',10011,'Wien','1958-11-11','Weiblich');
INSERT INTO Kunde VALUES(DEFAULT,'MARTIN','FEIN','Str12',10012,'Wien','1982-06-05','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'MARIA','JONKE','Str13',10013,'Wien','1976-08-17','Weiblich');
INSERT INTO Kunde VALUES(DEFAULT,'ROMAN','HAGER','Str14',10014,'Wien','1978-06-12','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'ROBERT','KUTSCHERA','Str15',10015,'Wien','1973-11-09','Maenlich');
INSERT INTO Kunde VALUES(DEFAULT,'ANDREAS','DICKNGER','Str16',10016,'Wien','1979-07-22','Maenlich');

//Table f�r Weinflasche

CREATE TABLE Weinflasche(
				ID INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) PRIMARY KEY,
				Bezeichnung VARCHAR(30),
				Hersteller VARCHAR(30),
				Ursprungsland VARCHAR(30),
				Vol DOUBLE,
				Inhalt DOUBLE,	
				Imlager BOOLEAN,
				KID INTEGER,
				FOREIGN KEY(KID) REFERENCES KUNDE(ID) ON DELETE CASCADE);
	

INSERT INTO Weinflasche VALUES (DEFAULT,'Consensus 3 Mese','Idol','T�rkei',14.0,0.75,TRUE,1);
INSERT INTO Weinflasche VALUES (DEFAULT,'Pasaeli','Pasaeli','T�rkei',15.0,0.75,TRUE,2);
INSERT INTO Weinflasche VALUES (DEFAULT,'Shah','B�y�l�bag','T�rkei',14.5,0.75,FALSE,3);
INSERT INTO Weinflasche VALUES (DEFAULT,'Vintage Shiraz & Petit Verdot','Kayra','T�rkei',14.0,0.75,FALSE,4);
INSERT INTO Weinflasche VALUES (DEFAULT,'Merlot','Casillero del Diablo','Chile',13.5,0.75,TRUE,5);
INSERT INTO Weinflasche VALUES (DEFAULT,'Coronas','Miguel Torres','Spain',14.5,0.75,FALSE,6);
INSERT INTO Weinflasche VALUES (DEFAULT,'Chardonnay','Casillero del Diablo','Chile',13.5,0.75,TRUE,7);
INSERT INTO Weinflasche VALUES (DEFAULT,'Cabernet Sauvignon','Casillero del Diablo','Chile',13.5,0.75,FALSE,8);
INSERT INTO Weinflasche VALUES (DEFAULT,'Casal Mendes Rose','Cavas Alianca','Protugal',13.5,0.75,FALSE,9);
INSERT INTO Weinflasche VALUES (DEFAULT,'Malbec','Graffigna','Argentinien',14.5,0.75,FALSE,10);
INSERT INTO Weinflasche VALUES (DEFAULT,'Ponsardin','Veuve Clicquat','Frankreich',14.0,0.75,FALSE,11);
INSERT INTO Weinflasche VALUES (DEFAULT,'La Grande Dame 1998','Vueve Clicquat','Frankreich',14.5,0.75,FALSE,12);
INSERT INTO Weinflasche VALUES (DEFAULT,'Charming Gr�ner Veltliner','Laurenz V','�sterreich',13,0.75,TRUE,13);
INSERT INTO Weinflasche VALUES (DEFAULT,'Schlumberger Brut','Schlumberger','�sterreich',11.5,0.75,TRUE,14);
INSERT INTO Weinflasche VALUES (DEFAULT,'Smaragd Riesling','Dom�ne Wachau','�sterreich',13.5,0.75,FALSE,15);
INSERT INTO Weinflasche VALUES (DEFAULT,'Blaufr�nkisch Vitikult','Roteringut Lang','�sterrich',14.5,0.75,TRUE,16);