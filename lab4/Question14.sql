SELECT DISTINCT Nume_Student, Prenume_Student, Disciplina, Nota
FROM dbo.studenti s
    JOIN dbo.studenti_reusita sr ON (s.Id_Student = sr.Id_Student)
    JOIN dbo.discipline d ON (sr.Id_Disciplina = d.Id_Disciplina)

    WHERE Nota > 8 and Tip_Evaluare = 'Examen';
    
     