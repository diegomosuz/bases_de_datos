USE Cine;

--Los t�tulos de las pel�culas proyectadas a las 16.00 Hs. 
SELECT Pelicula.titulo
    FROM Pelicula
    INNER JOIN Proyeccion
    ON Pelicula.pelicula = Proyeccion.pelicula
    WHERE  Proyeccion.hora_in = 16.00;

--Los t�tulos de las pel�culas que son proyectadas m�s de una vez y la cantidad de proyecciones
SELECT COUNT(Pr.pelicula) AS cantProy, Pr.pelicula, titulo
FROM Proyeccion Pr
INNER JOIN Pelicula P	
ON Pr.pelicula = P.pelicula
GROUP BY Pr.pelicula, titulo
HAVING COUNT(Pr.pelicula) > 1;

-- Los t�tulos de las pel�culas que hayan comenzado despu�s de las 17.00 Hs
SELECT DISTINCT Pelicula.titulo
    FROM Pelicula
    INNER JOIN Proyeccion
    ON Pelicula.pelicula = Proyeccion.pelicula
    WHERE  Proyeccion.hora_in > 17.00;

-- Cu�ntas veces se proyect� cada pelicula (listar los t�tulos de las que solo fueron proyectadas)
SELECT titulo, cant FROM Pelicula 
    INNER JOIN (SELECT pelicula, COUNT(*) AS cant FROM Proyeccion GROUP BY pelicula) AS contador 
	    ON Pelicula.pelicula = contador.pelicula;

-- Cu�ntas veces se proyect� cada pelicula (listar todos los t�tulos)
SELECT titulo, cant FROM Pelicula 
    LEFT JOIN (SELECT pelicula, COUNT(Proyeccion.pelicula) AS cant FROM Proyeccion GROUP BY pelicula) AS contador 
	    ON Pelicula.pelicula = contador.pelicula;

--El nombre de una de las pel�culas m�s vista y la cantidad de veces que fue vista
SELECT TOP 1 titulo, CantidadVistas 
FROM (SELECT pelicula, COUNT(pelicula) AS CantidadVistas FROM Proyeccion GROUP BY pelicula) AS Cantidad 
INNER JOIN Pelicula ON Cantidad.pelicula = Pelicula.pelicula ORDER BY CantidadVistas DESC

--Igual que anterior, pero se requiere la lista de las pel�culas m�s vistas, una opci�n ser�a:
SELECT titulo, r FROM Pelicula 
INNER JOIN (SELECT pelicula, COUNT(pelicula) AS r FROM Proyeccion GROUP BY pelicula HAVING COUNT(pelicula) 
	= (SELECT TOP 1 COUNT(pelicula) AS cant 
FROM Proyeccion GROUP BY pelicula ORDER BY cant DESC)) aux ON aux.pelicula = Pelicula.pelicula

--Crear una vista que muestre la capacidad de la sala que proyecta un musical (Sin utilizar ning�n tipo de JOIN)
CREATE VIEW CapacidadSala AS
(
SELECT (SELECT capacidad FROM SALA WHERE PROYECCION.sala = SALA.sala) AS CapSala
FROM PROYECCION, (SELECT  pelicula, titulo FROM PELICULA 
WHERE PELICULA.genero = 'Musical') as TABLA
WHERE PROYECCION.pelicula = TABLA.pelicula
);




SELECT * FROM CapacidadSala;