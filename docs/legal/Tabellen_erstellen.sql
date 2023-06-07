-- ####################################################################################################################
-- #
-- # Erstellt die Tabellen für die Kundendaten für die Software der Angebotserstellung der ITSystemHausDD GmbH
-- # ------------------------------------------------------------------------------------------------------------- 
-- #
-- # Benötigte Datenbanken:
-- # ----------------------
-- # Software ITSystemHausDD GmbH
-- #
-- #
-- # Versionshistorie
-- # ----------------
-- # Version 1.00 2023-06-07 Erste Version zur Nutzung freigegeben /td
-- #
-- ####################################################################################################################


USE [Software ITSystemHausDD GmbH];

CREATE TABLE Ort (
 [PLZ]                                   VARCHAR(5) PRIMARY KEY,
 [Ort]                                   VARCHAR(50) NOT NULL
);

CREATE TABLE Kunde (
 [Kdnr.]                                 INT PRIMARY KEY,
 [Vorname]                               VARCHAR(50) NOT NULL,
 [Name]                                  VARCHAR(50) NOT NULL,
 [Adresse]                               VARCHAR(100) NOT NULL,
 [PLZ]                                   VARCHAR(5) NOT NULL FOREIGN KEY REFERENCES [Ort]([PLZ])
  ON UPDATE CASCADE
  ON DELETE CASCADE,
 [Telefonnummer]                         VARCHAR(15) NOT NULL,
);

CREATE TABLE Raum (
 [Raum_Id]                               INT IDENTITY(1, 1) PRIMARY KEY,
 [Kdnr.]                                 INT NOT NULL FOREIGN KEY REFERENCES [Kunde]([Kdnr.]),
 [BLOB]                                  VARBINARY(MAX),
 [Raumhöhe]                              DECIMAL(3,2)               
 );

CREATE TABLE Metadaten (
 [Meta_ID]                               INT IDENTITY(1, 1) PRIMARY KEY,
 [Raum_ID]                               INT NOT NULL FOREIGN KEY REFERENCES [Raum]([Raum_Id]),
 [Höchsttemperatur]                      DECIMAL(2,2),               
 [Durchschnittstemperatur]               DECIMAL(2,2),
 [maximale Luftfeuchtigkeit]             DECIMAL(3,2),
 [durchschnittliche Luftfeuchtigkeit]    DECIMAL(3,2)
);

CREATE TABLE CPU_Einkauf (
 [CPU_Einkauf_ID]                        INT PRIMARY KEY,
 [Bezeichnung]                           VARCHAR(100) NOT NULL,
 [Anzahl Kerne]                          INT,
 [Anzahl Threads]                        INT,
 [Taktfrequnez]                          INT,
 [Einkaufspreis]                         DECIMAL(4,2) NOT NULL,
 [Vorrat]                                INT NOT NULL
);

CREATE TABLE RAM_Einkauf (
 [RAM_Einkauf_ID]                        INT PRIMARY KEY,
 [Bezeichnung]                           VARCHAR(100) NOT NULL,
 [Speichergröße]                         INT,
 [Taktfrequnez]                          INT,
 [Einkaufspreis]                         DECIMAL(4,2) NOT NULL,
 [Vorrat]                                INT NOT NULL
);

CREATE TABLE Festplatte_Einkauf (
 [Festplatte_Einkauf_ID]                 INT PRIMARY KEY,
 [Bezeichnung]                           VARCHAR(100) NOT NULL,
 [Größe]                                 INT,
 [Baufaktor]                             VARCHAR(50),
 [Einkaufspreis]                         DECIMAL(4,2) NOT NULL,
 [Vorrat]                                INT NOT NULL
);

CREATE TABLE Netzteil_Einkauf (
 [Netzteil_Einkauf_ID]                   INT PRIMARY KEY,
 [Bezeichnung]                           VARCHAR(100) NOT NULL,
 [Gesamtleistung]                        INT,
 [5V-Leistung]                           INT,
 [12V-Leistung]                          INT,
 [Einkaufspreis]                         DECIMAL(4,2) NOT NULL,
 [Vorrat]                                INT NOT NULL
); 

CREATE TABLE Gehäuse_Einkauf (
 [Gehäuse_Einkauf_ID]                    INT PRIMARY KEY,
 [Bezeichnung]                           VARCHAR(100) NOT NULL,
 [Formfaktor]                            VARCHAR(50),
 [Länge]                                 DECIMAL(3,2),
 [Höhe]                                  DECIMAL(3,2),
 [Breite]                                DECIMAL(3,2),
 [Einkaufspreis]                         DECIMAL(4,2) NOT NULL,
 [Vorrat]                                INT NOT NULL 
);

CREATE TABLE Verkabelung_Einkauf (
 [Verkabelung_Einkauf_ID]                INT PRIMARY KEY,
 [Bezeichnung]                           VARCHAR(100) NOT NULL,
 [Kabelart]                              VARCHAR(50),
 [Länge]                                 DECIMAL(3,2),
 [Baufaktor]                             VARCHAR(50),
 [Datendurchsatz]                        DECIMAL(3,2),
 [Einkaufspreis]                         DECIMAL(4,2) NOT NULL,
 [Vorrat]                                INT NOT NULL 
);

CREATE TABLE CPU_Kauf (
 [CPU_Kauf_ID]                           INT IDENTITY(1, 1) PRIMARY KEY,
 [CPU_Einkauf_ID]                        INT NOT NULL FOREIGN KEY REFERENCES CPU_Einkauf(CPU_Einkauf_ID),
 [Einzelpreis]                           DECIMAL(4,2),       
 [Menge]                                 INT,
 [Preis]                                 DECIMAL(5,2),
);

CREATE TABLE RAM_Kauf (
 [RAM_Kauf_ID]                           INT IDENTITY(1, 1) PRIMARY KEY,
 [RAM_Einkauf_ID]                        INT NOT NULL FOREIGN KEY REFERENCES RAM_Einkauf(RAM_Einkauf_ID),
 [Einzelpreis]                           DECIMAL(4,2),       
 [Menge]                                 INT,
 [Preis]                                 DECIMAL(5,2),
);

CREATE TABLE Festplatte_Kauf (
 [Festplatte_Kauf_ID]                    INT IDENTITY(1, 1) PRIMARY KEY,
 [Festplatte_Einkauf_ID]                 INT NOT NULL FOREIGN KEY REFERENCES Festplatte_Einkauf(Festplatte_Einkauf_ID),
 [Einzelpreis]                           DECIMAL(4,2),       
 [Menge]                                 INT,
 [Preis]                                 DECIMAL(5,2), 
);

CREATE TABLE Netzteil_Kauf (
 [Netzteil_Kauf_ID]                      INT IDENTITY(1, 1) PRIMARY KEY,
 [Netzteil_Einkauf_ID]                   INT NOT NULL FOREIGN KEY REFERENCES Netzteil_Einkauf(Netzteil_Einkauf_ID),
 [Einzelpreis]                           DECIMAL(4,2),       
 [Menge]                                 INT,
 [Preis]                                 DECIMAL(5,2),
);

CREATE TABLE Gehäuse_Kauf (
 [Gehäuse_Kauf_ID]                       INT IDENTITY(1, 1) PRIMARY KEY,
 [Gehäuse_Einkauf_ID]                    INT NOT NULL FOREIGN KEY REFERENCES Gehäuse_Einkauf(Gehäuse_Einkauf_ID),
 [Einzelpreis]                           DECIMAL(4,2),       
 [Menge]                                 INT,
 [Preis]                                 DECIMAL(5,2),
);

CREATE TABLE Verkabelung_Kauf (
 [Verkabelung_Kauf_ID]                   INT IDENTITY(1, 1) PRIMARY KEY,
 [Verkabelung_Einkauf_ID]                INT NOT NULL FOREIGN KEY REFERENCES Verkabelung_Einkauf(Verkabelung_Einkauf_ID),
 [Einzelpreis]                           DECIMAL(4,2),       
 [Menge]                                 INT,
 [Preis]                                 DECIMAL(5,2),
);

CREATE TABLE Gerät (
 [Gerät_ID]                              INT IDENTITY(1, 1) PRIMARY KEY,
 [Raum_ID]                               INT NOT NULL FOREIGN KEY REFERENCES [Raum]([Raum_Id]),
 [CPU_Kauf_ID]                           INT NOT NULL FOREIGN KEY REFERENCES [CPU_Kauf]([CPU_Kauf_ID]),
 [RAM_Kauf_ID]                           INT NOT NULL FOREIGN KEY REFERENCES [RAM_Kauf]([RAM_Kauf_ID]),
 [Festplatte_Kauf_ID]                    INT NOT NULL FOREIGN KEY REFERENCES [Festplatte_Kauf]([Festplatte_Kauf_ID]),
 [Netzteil_Kauf_ID]                      INT NOT NULL FOREIGN KEY REFERENCES [Netzteil_Kauf]([Netzteil_Kauf_ID]),
 [Gehäuse_Kauf_ID]                       INT NOT NULL FOREIGN KEY REFERENCES [Gehäuse_Kauf]([Gehäuse_Kauf_ID]), 
 [Verkabelung_Kauf_ID]                   INT NOT NULL FOREIGN KEY REFERENCES [Verkabelung_Kauf]([Verkabelung_Kauf_ID]),
 [Gesamtpreis]		                     DECIMAL(6,2) NOT NULL       
);