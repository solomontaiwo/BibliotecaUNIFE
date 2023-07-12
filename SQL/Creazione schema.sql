CREATE SCHEMA IF NOT EXISTS BibliotecaUNIFE;

USE BibliotecaUNIFE;

CREATE TABLE Utente (
	N_matricola INT NOT NULL,
	Cognome     VARCHAR(20),
    Nome        VARCHAR(20),
	N_telefono  VARCHAR(11),
	Via         VARCHAR(20),
	N_civico    VARCHAR(4),
	Cap         CHAR(6),
	Città       VARCHAR(20),
	Sesso       CHAR,

	PRIMARY KEY (N_matricola),
	UNIQUE (N_telefono)
);

CREATE TABLE Dipartimento (
	Cod_dip     INT NOT NULL AUTO_INCREMENT,
	Nome        VARCHAR(30),
	Via 	    VARCHAR(20),
	N_civico 	VARCHAR(4),
	Cap         CHAR(6),
	Città       VARCHAR(20),

	PRIMARY KEY (Cod_dip),
	UNIQUE (Nome)
);


CREATE TABLE Libro(
	Cod_libro   INT NOT NULL AUTO_INCREMENT,
    Titolo		VARCHAR(50),
	ISBN		VARCHAR(20),
    Lingua		VARCHAR(20),
	Anno_pub	YEAR,
	Cod_dip	    INT,

	PRIMARY KEY (Cod_libro),
	FOREIGN KEY (Cod_dip) REFERENCES Dipartimento(Cod_dip)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Autore(
	Cod_autore  INT NOT NULL AUTO_INCREMENT,
	Nome 	    VARCHAR(20),
	Cognome 	VARCHAR(20),
	Data_nascita DATE,
	Luogo_nascita VARCHAR(30),

	PRIMARY KEY (Cod_autore)
);

CREATE TABLE Custodire(
	Cod_custodire INT NOT NULL AUTO_INCREMENT,
	Cod_libro	INT,
	Cod_dip	    INT,

	PRIMARY KEY (Cod_custodire),
	FOREIGN KEY (Cod_libro) REFERENCES Libro(Cod_libro)
    ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Cod_dip) REFERENCES Dipartimento(Cod_dip)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Prestito(
	Cod_prestito INT NOT NULL AUTO_INCREMENT,
	Cod_libro	INT,
	N_matricola	INT,
	Data_uscita DATE,
    Restituzione BOOLEAN,

	PRIMARY KEY (Cod_prestito),
	FOREIGN KEY (Cod_libro) REFERENCES Libro(Cod_libro)
    ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (N_matricola) REFERENCES Utente(N_matricola)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Scrivere(
	Cod_scrivere INT NOT NULL AUTO_INCREMENT,
	Cod_libro	INT,
	Cod_autore	INT,

	PRIMARY KEY (Cod_scrivere),
	FOREIGN KEY (Cod_libro) REFERENCES Libro(Cod_libro)
    ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Cod_autore) REFERENCES Autore(Cod_autore)
);