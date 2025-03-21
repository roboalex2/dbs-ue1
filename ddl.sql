CREATE TABLE Kurs (
    KursNr INT PRIMARY KEY,
    Bezeichnung NVARCHAR(100),
    Leiter NVARCHAR(100),
    Preis INT,
    Vorausgesetzter_Kurs INT NULL,
    FOREIGN KEY (Vorausgesetzter_Kurs) REFERENCES Kurs(KursNr)
);

CREATE TABLE Teilnehmer (
    TeilnehmerNr INT PRIMARY KEY,
    Name NVARCHAR(100)
);

CREATE TABLE Teilnahme (
    KursNr INT,
    TeilnehmerNr INT,
    Datum DATE,
    PRIMARY KEY (KursNr, TeilnehmerNr),
    FOREIGN KEY (KursNr) REFERENCES Kurs(KursNr),
    FOREIGN KEY (TeilnehmerNr) REFERENCES Teilnehmer(TeilnehmerNr)
);
