SELECT k.Bezeichnung
  FROM Kurs k
  JOIN Kurs k2 ON k.KursNr = k2.Vorausgesetzter_Kurs
 GROUP BY k.KursNr, k.Bezeichnung
HAVING COUNT(*) = (
    SELECT MAX(Anzahl)
    FROM (
        SELECT COUNT(*) AS Anzahl
        FROM Kurs k_inner
        JOIN Kurs k2_inner ON k_inner.KursNr = k2_inner.Vorausgesetzter_Kurs
        GROUP BY k_inner.KursNr
    ) AS KursZaehler
);
go