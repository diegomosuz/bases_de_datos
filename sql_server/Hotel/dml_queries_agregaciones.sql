USE Hotel;
GO

-- FUNCIONES DE AGREGACION

-- �Cu�ntos hoteles hay?
SELECT COUNT(*) AS [Cantidad de Hoteles] FROM Hotel;

-- �Cu�l es el precio medio de una habitaci�n?
SELECT AVG(price) AS [Precio medio de las habitaciones] FROM Room;

-- �Cu�l es el ingreso total por noche generado por todas las habitaciones dobles?
SELECT SUM(price) AS [Ingreso total por noche] FROM Room WHERE [type] = 'Doble';


-- �Cu�ntos hu�spedes diferentes han hecho reservas para agosto?
SELECT guestNo, COUNT(guestNo) AS cantidadRerservasAgosto FROM Booking WHERE MONTH(dateFrom) = 8 GROUP BY guestNo;