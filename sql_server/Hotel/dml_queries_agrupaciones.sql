USE Hotel;
GO

-- AGRUPACIONES


-- Generar un listado con el número de habitaciones de cada hotel.
SELECT hotelName, city, COUNT(Room.hotelNo) cantHab FROM Room 
	INNER JOIN Hotel ON Room.hotelNo = Hotel.hotelNo GROUP BY hotelName, city;

-- Generar un listado con el número de habitaciones en cada hotel de Londres.
SELECT hotelName, COUNT(roomNo) numHab FROM Room INNER JOIN Hotel ON Room.hotelNo = Hotel.hotelNo WHERE  city = 'Londres'
	GROUP BY hotelName;

-- ¿Cuál es el número medio de reservas para cada hotel en agosto?
SELECT hotelNo, COUNT(roomNo) AS cantidadRerservasHotelAgosto FROM Booking WHERE MONTH(dateFrom) = 8 GROUP BY hotelNo;

-- ¿Cuál es el tipo de habitación más comúnmente reservada para cada hotel de Londres******?
SELECT TOP 1 [type], COUNT(Room.roomNo) cant FROM Booking INNER JOIN Room ON Booking.roomNo = Room.roomNo 
	WHERE Booking.hotelNo IN (SELECT hotelNo FROM Hotel WHERE city = 'Londres') GROUP BY [type] ORDER BY [type];


-- ¿Cuál es la pérdida de ingresos debida a habitaciones no ocupadas en cada hotel hoy?
SELECT T1.hotelNo, total1 - CASE WHEN total2 IS NULL THEN 0 ELSE total2 END AS perdidaXhotel FROM
	(SELECT hotelNo, SUM(price) AS total1 FROM Room GROUP BY hotelNo) AS T1
LEFT JOIN 
	(SELECT Booking.hotelNo, SUM(price) AS total2 FROM Booking 
		INNER JOIN Room ON Booking.roomNo = Room.roomNo WHERE dateFrom = CONVERT(date,GETDATE(),121) GROUP BY Booking.hotelNo) AS T2
ON T1.hotelNo = T2.hotelNo;
