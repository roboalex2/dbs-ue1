SELECT 
    Leiter,
    AVG(Erloes) AS MITTEL,
    MAX(Preis) AS MAXIMAL
FROM (
    SELECT 
        k.Leiter,
        k.Preis,
        COUNT(t.TeilnehmerNr) * k.Preis AS Erloes
    FROM Kurs k
    LEFT JOIN Teilnahme t ON k.KursNr = t.KursNr
    GROUP BY k.Leiter, k.KursNr, k.Preis
) AS Kursdaten
GROUP BY Leiter;
go