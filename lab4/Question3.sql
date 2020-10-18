SELECT DISTINCT Nume_Profesor, Prenume_Profesor, Disciplina
FROM dbo.profesori pr
    JOIN dbo.studenti_reusita reu
    ON ( pr.Id_Profesor = reu.Id_Profesor  )

    JOIN dbo.discipline di 
    ON (reu.Id_Disciplina = di.Id_Disciplina)
    ORDER BY Nume_Profesor DESC, Prenume_Profesor DESC;

