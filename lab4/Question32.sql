SELECT s.id_student, s.nume_student, s.prenume_student, g.cod_grupa, AVG(sr.nota) media 
FROM studenti s  
     JOIN studenti_reusita sr ON (s.id_student = sr.id_student)
     JOIN grupe g ON (sr.id_grupa = g.id_grupa)
WHERE s.id_student = sr.id_student 
GROUP BY s.id_student, s.nume_student, s.prenume_student, g.cod_grupa
ORDER BY  g.cod_grupa, s.nume_student, s.prenume_student;