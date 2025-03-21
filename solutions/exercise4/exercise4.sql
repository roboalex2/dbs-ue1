SELECT DISTINCT tn.Name
  FROM Teilnahme t
  JOIN Kurs k ON t.KursNr = k.KursNr
  JOIN Teilnehmer tn ON t.TeilnehmerNr = tn.TeilnehmerNr
 WHERE k.Preis < 4000;
go