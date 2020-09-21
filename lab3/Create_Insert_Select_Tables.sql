CREATE TABLE Groups (
    group_id SMALLINT,
    group_code CHAR(6), 
    specialty VARCHAR(255),
    faculty VARCHAR(255),
    PRIMARY KEY (group_id)
);

CREATE TABLE Discipline (
    discipline_id SMALLINT,
    discipline VARCHAR(255),
    number_of_hours SMALLINT,
    PRIMARY KEY (discipline_id)
);

INSERT INTO Discipline VALUES (100, 'Sisteme de operare', 60);
INSERT INTO Discipline VALUES (101, 'Programarea Calculatoarelor', 60);
INSERT INTO Discipline VALUES (102, 'Informatica Aplicata', 46);
INSERT INTO Discipline VALUES (103, 'Sisteme de Calcul', 46);
INSERT INTO Discipline VALUES (104, 'Asamblare si Depanare PC', 60);
INSERT INTO Discipline VALUES (105, 'Cercetari Operationale', 76);
INSERT INTO Discipline VALUES (106, 'Programarea WEB',  46);
INSERT INTO Discipline VALUES (107, 'Baze de Date', 60);
INSERT INTO Discipline VALUES (108, 'Structuri de Date si Algoritmi', 76);
INSERT INTO Discipline VALUES (109, 'Retele Informatice', 46);
INSERT INTO Discipline VALUES (110, 'Matematica Discreta', 60);
INSERT INTO Discipline VALUES (111, 'Modelarea Sistemelor', 46);
INSERT INTO Discipline VALUES (112, 'Limbaje Evaluate de Programare (Java, .Net)', 76);
INSERT INTO Discipline VALUES (113, 'Programarea Aplicatiilor Windows', 60);
INSERT INTO Discipline VALUES (114, 'Tehnologii de Procesare a Informatiei', 46);
INSERT INTO Discipline VALUES (115, 'Programarea Declarativa', 46);
INSERT INTO Discipline VALUES (116, 'Proiectarea Sistemelor Informatice', 60);
INSERT INTO Discipline VALUES (117, 'Practica de Licenta', 80);
INSERT INTO Discipline VALUES (118, 'Practica de Productie', 80);
INSERT INTO Discipline VALUES (119, 'Integrare Informationala Europeana', 20);
INSERT INTO Discipline VALUES (120, 'Programe Aplicative', 46);
GO

INSERT INTO Groups VALUES (1, 'CIB171', 'Cibernetica', 'Informatica si Cibernetica');
INSERT INTO Groups VALUES (2, 'INF171', 'Informatica', 'Informatica si Cibernetica');
INSERT INTO Groups VALUES (3, 'TI171', 'Tehnologii Informationale', 'Informatica si Cibernetica');
GO

SELECT * FROM Groups;
GO
SELECT * FROM Discipline;
GO