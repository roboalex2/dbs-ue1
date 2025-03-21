SELECT tn.TeilnehmerNr, tn.Name
FROM Teilnehmer tn
WHERE NOT EXISTS (
    SELECT k.KursNr
      FROM Kurs k
    EXCEPT
    SELECT t.KursNr
      FROM Teilnahme t
     WHERE t.TeilnehmerNr = tn.TeilnehmerNr
);
go