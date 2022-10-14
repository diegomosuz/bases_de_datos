USE Hotel;
GO


--CONSULTAS SIMPLES

-- Generar un listado con todos los detalles de los hoteles.
SELECT * FROM Hotel;

-- Generar un listado con todos los detalles de todos los hoteles situados en Londres.
SELECT * FROM Hotel WHERE city = 'Londres';

-- Generar un listado con los nombres y direcciones de todos los huéspedes que viven en Londres, ordenado alfabéticamente por nombre.
SELECT guestName, guestAddress FROM Guest WHERE guestAddress LIKE '%Londres%';

-- Generar un listado de todas las habitaciones dobles o familiares cuyo precio sea inferior a 40 euros por noche, en orden ascendente de precios.
SELECT * FROM Room WHERE [type] IN ('Doble', 'Familiar') AND price < 40.00;

-- Generar un listado con todas las reservas para las que no se haya especificado un valor de dateTo.
SELECT * FROM Booking WHERE dateTo is NULL;
