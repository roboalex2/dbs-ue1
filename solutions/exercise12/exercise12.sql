SELECT DISTINCT tn.Name
  FROM Teilnehmer tn
  JOIN Teilnahme t ON tn.TeilnehmerNr = t.TeilnehmerNr
  JOIN Kurs k ON t.KursNr = k.KursNr
 WHERE tn.TeilnehmerNr NOT IN (
    SELECT t2.TeilnehmerNr
      FROM Teilnahme t2
      JOIN Kurs k2 ON t2.KursNr = k2.KursNr
     WHERE k2.Leiter = 'Huber'
);
go