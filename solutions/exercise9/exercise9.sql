SELECT tn.Name
  FROM Teilnehmer tn
  LEFT JOIN Teilnahme t ON tn.TeilnehmerNr = t.TeilnehmerNr
 WHERE t.KursNr IS NULL;
go