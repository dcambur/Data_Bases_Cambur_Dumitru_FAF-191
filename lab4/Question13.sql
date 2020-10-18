SELECT DISTINCT Nume_Student, Prenume_Student, Disciplina 
FROM dbo.studenti s
    JOIN dbo.studenti_reusita sr ON (s.Id_Student = sr.Id_Student)
    JOIN dbo.discipline d ON (sr.Id_Disciplina = d.Id_Disciplina)
    
    WHERE s.Nume_Student LIKE('Florea') and s.Prenume_Student LIKE('Ioan') ;