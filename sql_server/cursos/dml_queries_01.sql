USE Cursos;

-- Cursos que tienen al menos un alumno matriculado
-- Forma 1
SELECT * FROM Curso WHERE
	id_curso IN (SELECT DISTINCT id_curso FROM Alumno_Curso);

	-- Cursos que tienen al menos un alumno matriculado
-- Forma 2
SELECT * FROM Curso WHERE
	id_curso = ANY (SELECT DISTINCT id_curso FROM Alumno_curso);


-- Cursos en los que no existen alumnos matriculados
-- Forma 1
SELECT * FROM Curso WHERE
	id_curso NOT IN (SELECT DISTINCT id_curso FROM Alumno_Curso);

	-- Cursos en los que no existen alumnos matriculados
-- Forma 2
SELECT * FROM Curso WHERE
	id_curso != ALL (SELECT DISTINCT id_curso FROM Alumno_curso);
