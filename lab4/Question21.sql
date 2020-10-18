SELECT s.nume_student, s.prenume_student, count(sr.nota) nota_totala
FROM studenti AS s, 
     studenti_reusita AS sr 
WHERE s.id_student = sr.id_student 
GROUP BY s.nume_student, s.prenume_student, sr.id_student 
ORDER BY s.nume_student, s.prenume_student;