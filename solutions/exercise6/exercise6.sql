SELECT COUNT(*) AS ANZAHL
  FROM Teilnahme t
  JOIN Kurs k ON t.KursNr = k.KursNr
 WHERE k.Leiter = 'Huber';
go