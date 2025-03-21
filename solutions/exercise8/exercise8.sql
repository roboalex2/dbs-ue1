SELECT tn.Name, COUNT(t.KursNr) AS Anzahl_Kursteilnahmen
  FROM Teilnehmer tn
  JOIN Teilnahme t ON tn.TeilnehmerNr = t.TeilnehmerNr
 GROUP BY tn.TeilnehmerNr, tn.Name
 ORDER BY tn.Name;
go