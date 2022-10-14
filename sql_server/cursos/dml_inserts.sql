USE Cursos;

INSERT INTO Alumno			VALUES	(1,'Pablo', 'Hernandez Mata', '1995-03-14'),
									(2,'Jeremias', 'Santos Lopez', '1993-07-12'),
									(3,'Teresa', 'Lomas Trillo', '1989-06-19'),
									(4,'Marta', 'Fuego Garcia', '1992-11-23'),
									(5,'Sergio', 'Ot Dirmet', '1991-04-21'),
									(6,'Carmen', 'Dilma Perna', '1987-12-04');
INSERT INTO Curso			VALUES	(1, 'Programacion PHP'),
									(2, 'Modelos abstractos de datos'),
									(3, 'SQL desde cero'),
									(4, 'Dibujo tecnico'),
									(5, 'SQL avanzado');
INSERT INTO Alumno_Curso	VALUES	(1,1),
									(1,3),
									(2,4),
									(3,1),
									(4,2),
									(5,1),
									(5,3),
									(6,4);