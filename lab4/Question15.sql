SELECT DISTINCT Nume_Student, Prenume_Student, Data_Evaluare, Nume_Profesor, Prenume_Profesor, Tip_Evaluare, Nota
FROM dbo.studenti s
    INNER JOIN dbo.studenti_reusita sr ON (s.Id_Student = sr.Id_Student)
    INNER JOIN dbo.profesori p ON (sr.Id_Profesor = p.Id_Profesor)
    INNER JOIN dbo.discipline d ON (sr.Id_Disciplina = d.Id_Disciplina)
    
    WHERE (Prenume_Profesor LIKE('Ion') or Prenume_Profesor LIKE('Gheorge')) and Tip_Evaluare LIKE('Examen') and Data_Evaluare >= '2017-1-1' and Nota >= 5
    ORDER BY Nota DESC;
     