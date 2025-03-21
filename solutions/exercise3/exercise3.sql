SELECT k.Bezeichnung
  FROM Teilnahme t
  JOIN Teilnehmer tn ON t.TeilnehmerNr = tn.TeilnehmerNr
  JOIN Kurs k ON t.KursNr = k.KursNr
 WHERE tn.Name = 'Lauch'
 ORDER BY k.Bezeichnung;
go