CREATE DATABASE Cursos;

USE Cursos;

CREATE TABLE Alumno(
	id_alumno		INT				PRIMARY KEY,
	nombre			VARCHAR(30)		NOT NULL,
	apellido		VARCHAR(30)		NOT NULL,
	f_nacimiento	VARCHAR(10)		NOT NULL
);

CREATE TABLE Curso(
	id_curso		INT				PRIMARY KEY,
	titulo			VARCHAR(50)		NOT NULL
);

CREATE TABLE Alumno_Curso(
	id_alumno		INT,
	id_curso		INT,
	PRIMARY KEY (id_alumno, id_curso),
	FOREIGN KEY (id_alumno) REFERENCES Alumno(id_alumno),
	FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);