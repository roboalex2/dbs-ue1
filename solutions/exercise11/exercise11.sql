SELECT DISTINCT k1.Bezeichnung
  FROM Kurs k1
  JOIN Kurs k2 ON k1.KursNr = k2.Vorausgesetzter_Kurs
 WHERE k1.Vorausgesetzter_Kurs IS NOT NULL;
go