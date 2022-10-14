USE Hotel;
GO

-- FUNCIONES DE AGREGACION

-- ¿Cuántos hoteles hay?
SELECT COUNT(*) AS [Cantidad de Hoteles] FROM Hotel;

-- ¿Cuál es el precio medio de una habitación?
SELECT AVG(price) AS [Precio medio de las habitaciones] FROM Room;

-- ¿Cuál es el ingreso total por noche generado por todas las habitaciones dobles?
SELECT SUM(price) AS [Ingreso total por noche] FROM Room WHERE [type] = 'Doble';


-- ¿Cuántos huéspedes diferentes han hecho reservas para agosto?
SELECT guestNo, COUNT(guestNo) AS cantidadRerservasAgosto FROM Booking WHERE MONTH(dateFrom) = 8 GROUP BY guestNo;