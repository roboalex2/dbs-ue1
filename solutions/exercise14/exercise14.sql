SELECT Bezeichnung, Preis
  FROM Kurs
 WHERE Leiter = 'Maier'
   AND Preis > (
       SELECT MAX(Preis)
         FROM Kurs
        WHERE Leiter = 'Huber'
      );
go