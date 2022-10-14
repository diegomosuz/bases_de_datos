USE Cine;

INSERT INTO Sala		VALUES	('Sala1','Piso1',30),
								('Sala2','Piso1',40),
								('Sala3','Piso2',50);
INSERT INTO Pelicula	VALUES	('Pel1','The Batman','Acción'),
								('Pel2','CODA','Musical'),
								('Pel3', 'Dr. Strange', 'Acción');
INSERT INTO Proyeccion	VALUES	('Sala1','Pel1','2D','16.00','19.00'),
								('Sala1','Pel1','2D','20.00','23.00'),
								('Sala2','Pel1','3D','19.00','22.00'),
								('Sala2','Pel2','3D','16.00','18.00'),
								('Sala3','Pel1','4D','22.00','01.00');