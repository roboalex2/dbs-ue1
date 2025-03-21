SELECT k.KursNr, COUNT(t.TeilnehmerNr) AS ANZAHL
  FROM Kurs k
  JOIN Teilnahme t ON k.KursNr = t.KursNr
 GROUP BY k.KursNr, k.Bezeichnung
HAVING COUNT(t.TeilnehmerNr) > 2;
go