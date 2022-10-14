CREATE DATABASE Cine;

USE Cine;

CREATE TABLE Sala(
	sala		VARCHAR(20)		PRIMARY KEY,
	piso		VARCHAR(5),
	capacidad	INT
);

CREATE TABLE Pelicula(
	pelicula	VARCHAR(5)		PRIMARY KEY,
	titulo		VARCHAR(20),
	genero		VARCHAR(20)
);

CREATE TABLE Proyeccion(
	sala		VARCHAR(20),
	pelicula	VARCHAR(5),
	tipo		VARCHAR(2),
	hora_in		VARCHAR(5),
	hora_fin	VARCHAR(5),
	PRIMARY KEY (sala, pelicula, hora_in),
	FOREIGN KEY (sala)		REFERENCES Sala(sala),
	FOREIGN KEY (pelicula)	REFERENCES Pelicula(pelicula)
	
);