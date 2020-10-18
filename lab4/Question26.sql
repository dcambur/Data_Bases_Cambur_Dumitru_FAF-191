SELECT Nume_Student, Prenume_Student, Adresa_Postala_Student
FROM studenti s  
     JOIN studenti_reusita sr ON (s.id_student = sr.id_student)
     JOIN profesori p ON (sr.id_profesor = p.id_profesor)
     GROUP BY s.Nume_Student, s.Prenume_Student, s.Adresa_Postala_Student
     HAVING Adresa_Postala_Student LIKE('%str.31 August%');

GO

SELECT Nume_Profesor, Prenume_Profesor, Adresa_Postala_Profesor
FROM studenti_reusita sr 
     JOIN profesori p ON (sr.id_profesor = p.id_profesor)
     GROUP BY p.Nume_Profesor, p.Prenume_Profesor, p.Adresa_Postala_Profesor
    HAVING Adresa_Postala_Profesor LIKE('%str.31 August%');

    