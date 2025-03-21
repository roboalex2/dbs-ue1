-- Kurse
INSERT INTO Kurs (KursNr, Bezeichnung, Leiter, Preis, Vorausgesetzter_Kurs) VALUES
(10, 'Grundkurs Kochen', 'Maier', 4000, NULL),
(11, 'Aufbaukurs Kochen', 'Huber', 3000, 10),
(12, 'Leichte Kueche', 'Maier', 3000, 10),
(13, 'Spezialitaeten', 'Maier', 5000, 11),
(14, 'Haubenkoch', 'Maier', 8000, 13),
(15, 'Grundkurs Suppen', 'Huber', 4000, 10),
(16, 'Franz. Suppen', 'Novak', 2000, 15),
(17, 'Span. Suppen', 'Novak', 2000, 11);

-- Teilnehmer
INSERT INTO Teilnehmer (TeilnehmerNr, Name) VALUES
(100, 'Lauch'),
(101, 'Wallner'),
(102, 'Gruber'),
(103, 'Steyrer'),
(104, 'Fischer'),
(105, 'Mueller'),
(106, 'Hofer'),
(107, 'Aubauer'),
(108, 'Wagner');

-- Teilnahme
INSERT INTO Teilnahme (KursNr, TeilnehmerNr, Datum) VALUES
(10, 100, '2021-02-10'),
(10, 101, '2021-02-10'),
(10, 103, '2021-02-10'),
(10, 106, '2021-02-10'),
(11, 100, '2021-05-03'),
(11, 101, '2021-05-03'),
(11, 108, '2021-05-03'),
(12, 101, '2021-07-13'),
(13, 101, '2021-09-27'),
(13, 103, '2021-09-27'),
(14, 101, '2021-11-27'),
(14, 105, '2021-11-27'),
(15, 101, '2021-03-11'),
(16, 101, '2022-03-10'),
(17, 101, '2022-05-17');
