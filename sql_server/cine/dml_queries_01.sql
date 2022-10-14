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