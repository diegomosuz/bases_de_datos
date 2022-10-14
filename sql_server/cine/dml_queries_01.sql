USE Cine;

--Los títulos de las películas proyectadas a las 16.00 Hs. 
SELECT Pelicula.titulo
    FROM Pelicula
    INNER JOIN Proyeccion
    ON Pelicula.pelicula = Proyeccion.pelicula
    WHERE  Proyeccion.hora_in = 16.00;

--Los títulos de las películas que son proyectadas más de una vez y la cantidad de proyecciones
SELECT COUNT(Pr.pelicula) AS cantProy, Pr.pelicula, titulo
FROM Proyeccion Pr
INNER JOIN Pelicula P	
ON Pr.pelicula = P.pelicula
GROUP BY Pr.pelicula, titulo
HAVING COUNT(Pr.pelicula) > 1;

-- Los títulos de las películas que hayan comenzado después de las 17.00 Hs
SELECT DISTINCT Pelicula.titulo
    FROM Pelicula
    INNER JOIN Proyeccion
    ON Pelicula.pelicula = Proyeccion.pelicula
    WHERE  Proyeccion.hora_in > 17.00;