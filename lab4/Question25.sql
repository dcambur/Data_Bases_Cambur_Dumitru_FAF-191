SELECT Cod_Grupa, Count(DISTINCT s.Id_Student) Total_Students
FROM dbo.studenti_reusita sr
    JOIN dbo.studenti s ON (sr.Id_Student = s.Id_Student)
    JOIN dbo.grupe g ON (sr.Id_Grupa = g.Id_Grupa)
    GROUP BY Cod_Grupa
    HAVING COUNT(DISTINCT s.Id_Student) > 24;
