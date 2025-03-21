SELECT tn.Name
  FROM Teilnahme t
  JOIN Teilnehmer tn ON t.TeilnehmerNr = tn.TeilnehmerNr
 WHERE t.KursNr = 10
 ORDER BY tn.Name;
