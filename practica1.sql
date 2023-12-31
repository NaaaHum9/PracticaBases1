create database agenda4;
use agenda4;

CREATE TABLE PERSONA (
CvePer INT NOT NULL PRIMARY KEY,
NomPer VARCHAR (45),
Dir VARCHAR (45)
) ENGINE=InnoDB;


CREATE TABLE TELEFONO (
CvePer INT NOT NULL,
Tel VARCHAR (15),
PRIMARY KEY (CvePer, Tel),
FOREIGN KEY (CvePer) REFERENCES PERSONA (CvePer)
ON DELETE CASCADE
ON UPDATE CASCADE
) ENGINE=InnoDB;

INSERT INTO Persona VALUES (123, "Lopez Garcia Odera", "Av. Del Pozo No. 17");
INSERT INTO Persona VALUES (125, "Diaz Reyes Gonzalo", "Av. Del Pozo No. 14");
INSERT INTO Persona VALUES (127, 'Cardona Reyes Renato', 'Av. Del Pozo No. 71');

INSERT INTO Telefono VALUES (123, 121212);
INSERT INTO Telefono VALUES (123, 151515);
INSERT INTO Telefono VALUES (123, 171717);

INSERT INTO Telefono VALUES (125, 313131);
INSERT INTO Telefono VALUES (125, 323232);