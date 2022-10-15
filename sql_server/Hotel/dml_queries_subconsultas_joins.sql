USE Hotel;
GO

-- SUBCONSULTAS Y JOINS


-- Generar un listado con el precio y el tipo de todas las habitaciones del Grosvenor Hotel.
-- Versión subconsulta
SELECT price, [type] FROM Room WHERE hotelNo = (SELECT hotelNo FROM Hotel WHERE hotelName = 'Grosvenor Hotel');
-- Version Join
SELECT price, [type] FROM Room INNER JOIN Hotel ON Room.hotelNo = Hotel.hotelNo WHERE hotelName = 'Grosvenor Hotel';


-- Generar un listado con todos los huéspedes que actualmente tiene el Grosvenor Hotel.
SELECT guestName FROM (SELECT * FROM Booking WHERE hotelNo = (SELECT hotelNo FROM Hotel WHERE hotelName = 'Grosvenor Hotel')) AS Gros
	INNER JOIN Guest ON Gros.guestNo = Guest.guestNo;

-- Generar un listado con los detalles de todas las habitaciones del Grosvenor Hotel, incluyendo el nombre del huésped que ocupa la habitación, si es que la habitación está ocupada.
SELECT R.roomNo, R.[type], R.price, G.guestName FROM Booking B 
INNER JOIN Room R ON B.roomNo = R.roomNo  INNER JOIN Guest G ON G.guestNo = B.guestNo 
WHERE B.hotelNo = (SELECT hotelNo FROM Hotel WHERE hotelName = 'Grosvenor Hotel')

-- ¿Cuál es el ingreso total correspondiente a las reservas realizadas en el Grosvenor Hotel hoy?
SELECT SUM(cant * price) AS ingresoGrosvenor FROM
(SELECT roomNo, COUNT(hotelNo) AS cant FROM Booking WHERE hotelNo = (SELECT hotelNo FROM Hotel WHERE hotelName = 'Grosvenor Hotel') 
		AND dateFrom = CONVERT(date,GETDATE(),121)
GROUP BY roomNo) AS Hab INNER JOIN Room ON Hab.roomNo = Room.roomNo

-- Generar un listado con las habitaciones actualmente no ocupadas en el Grosvenor Hotel.
SELECT * FROM Room WHERE roomNo NOT IN (SELECT roomNo FROM Booking WHERE hotelNo = (SELECT hotelNo FROM Hotel WHERE hotelName = 'Grosvenor Hotel'))
AND hotelNo = (SELECT hotelNo FROM Hotel WHERE hotelName = 'Grosvenor Hotel')

-- ¿Cuál es la pérdida de ingresos debido a habitaciones no ocupadas en el Grosvenor Hotel?
SELECT
	(SELECT SUM(price) AS total FROM Room WHERE hotelNo = (SELECT hotelNo FROM Hotel WHERE hotelName = 'Grosvenor Hotel'))
-
	(SELECT SUM(price) AS total FROM Booking INNER JOIN Room ON Booking.roomNo = Room.roomNo 
		WHERE Booking.hotelNo = (SELECT hotelNo FROM Hotel WHERE hotelName = 'Grosvenor Hotel'))
AS perdidaIngresos;