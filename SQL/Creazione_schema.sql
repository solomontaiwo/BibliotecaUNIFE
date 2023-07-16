CREATE USER IF NOT EXISTS 'solomon' @'localhost' IDENTIFIED BY 'solomon123';
GRANT ALL PRIVILEGES ON *.* TO 'solomon' @'localhost'
WITH GRANT OPTION;
FLUSH PRIVILEGES;

/* 
 Eliminazione tabelle se pre-esistenti
 DROP TABLE IF EXISTS Utente
 DROP TABLE IF EXISTS Dipartimento
 DROP TABLE IF EXISTS Libro
 DROP TABLE IF EXISTS Autore
 DROP TABLE IF EXISTS Custodire
 DROP TABLE IF EXISTS Prestito
 DROP TABLE IF EXISTS Scrivere
 */

DROP DATABASE IF EXISTS BibliotecaUNIFE;
CREATE DATABASE IF NOT EXISTS BibliotecaUNIFE;
USE BibliotecaUNIFE;

CREATE TABLE Utente (
    NMatricola  INT NOT NULL,
    Nome        VARCHAR(20),
    Cognome     VARCHAR(20),
    Via         VARCHAR(20),
    NCivico     VARCHAR(4),
    Cap         CHAR(6),
    Città       VARCHAR(20),
    NTelefono   VARCHAR(11),
    PRIMARY KEY (NMatricola),
    UNIQUE (NTelefono)
);

CREATE TABLE Dipartimento (
    CodDip      INT NOT NULL AUTO_INCREMENT,
    Nome        VARCHAR(50),
    Via         VARCHAR(30),
    NCivico     VARCHAR(4),
    Cap         CHAR(6),
    Città       VARCHAR(30),
    PRIMARY KEY (CodDip),
    UNIQUE (Nome)
);

CREATE TABLE Libro(
    CodLibro    INT NOT NULL AUTO_INCREMENT,
    Titolo      VARCHAR(90),
    ISBN        VARCHAR(20),
    Lingua      VARCHAR(20),
    AnnoPubb    YEAR,
    CodDip      INT,
    PRIMARY KEY (CodLibro),
    FOREIGN KEY (CodDip) 
        REFERENCES Dipartimento(CodDip) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE Autore(
    CodAutore       INT NOT NULL AUTO_INCREMENT,
    Nome            VARCHAR(30),
    Cognome         VARCHAR(30),
    DataNascita     DATE,
    LuogoNascita    VARCHAR(30),
    PRIMARY KEY (CodAutore)
);

CREATE TABLE Custodire(
    CodCustodire    INT NOT NULL AUTO_INCREMENT,
    CodLibro        INT,
    CodDip          INT,
    PRIMARY KEY (CodCustodire),
    FOREIGN KEY (CodLibro) 
        REFERENCES Libro(CodLibro) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (CodDip) 
        REFERENCES Dipartimento(CodDip) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE Prestito(
    CodPrestito     INT NOT NULL AUTO_INCREMENT,
    Restituzione    BOOLEAN,
    DataUscita      DATE,
    CodLibro        INT,
    NMatricola      INT,
    PRIMARY KEY (CodPrestito),
    FOREIGN KEY (CodLibro) 
    REFERENCES Libro(CodLibro) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    FOREIGN KEY (NMatricola) 
        REFERENCES Utente(NMatricola) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE Scrivere(
    CodScrivere     INT NOT NULL AUTO_INCREMENT,
    CodLibro        INT,
    CodAutore       INT,
    PRIMARY KEY (CodScrivere),
    FOREIGN KEY (CodLibro) 
        REFERENCES Libro(CodLibro) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (CodAutore) 
        REFERENCES Autore(CodAutore)
);

SET GLOBAL local_infile = 'ON';