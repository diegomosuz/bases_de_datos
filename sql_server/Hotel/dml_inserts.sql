USE Hotel;
GO
INSERT INTO Hotel VALUES	(1, 'Grosvenor Hotel', 'Londres'),
							(2, 'The Montcalm Royal', 'Londres'),
							(3, 'Park Grand', 'Londres'),
							(4, 'Travelodge', 'Londres'),
							(5, 'Canopy by Hilton', 'Londres'),
							(6, 'The Resident Covent Garden', 'Londres'),
							(7, 'Park Grand Paddington Court', 'Londres'),
							(8, 'The Tower Hotel', 'Londres'),
							(9, 'Leonardo Royal', 'Londres'),
							(10, 'easyHotel', 'Birmingham'),
							(11, 'Clayton', 'Birmingham'),
							(12, 'Genting', 'Birmingham'),
							(13, 'The Queens', 'Leeds'),
							(14, 'Russell Scott Backpackers', 'Leeds'),
							(15, 'Dakota', 'Manchester'),
							(16, 'Brooklyn', 'Manchester'),
							(17, 'Travelodge', 'Manchester'),
							(18, 'The Resident', 'Liverpool'),
							(19, 'Pullman', 'Liverpool'),
							(20, 'Hilton', 'Nottingham');
GO
INSERT INTO Room VALUES		(1, 1, 'Doble', 45.23),
							(2, 1, 'Familiar', 40.12),
							(3, 1, 'Individual', 30.5),
							(4, 2, 'Doble', 39.35),
							(5, 2, 'Familiar', 40.21),
							(6, 2, 'Individual', 25.5),
							(7, 3, 'Doble', 33.23),
							(8, 3, 'Familiar', 30.12),
							(9, 3, 'Individual', 20.5),
							(10, 4, 'Doble', 50.45),
							(11, 4, 'Familiar', 64.85),
							(12, 4, 'Individual', 45.00),
							(13, 5, 'Doble', 37.90),
							(14, 5, 'Familiar', 39.99),
							(15, 5, 'Individual', 32.85),
							(16, 6, 'Doble', 25.63),
							(17, 6, 'Familiar', 20.02),
							(18, 6, 'Individual', 20.15),
							(19, 7, 'Doble', 59.33),
							(20, 7, 'Familiar', 60.21),
							(21, 7, 'Individual', 45.5),
							(22, 8, 'Doble', 23.23),
							(23, 8, 'Familiar', 20.12),
							(24, 8, 'Individual', 10.5),
							(25, 9, 'Doble', 30.45),
							(26, 9, 'Familiar', 44.65),
							(27, 9, 'Individual', 25.40),
							(28, 10, 'Doble', 87.70),
							(29, 10, 'Familiar', 99.95),
							(30, 10, 'Individual', 76.45),
							(31, 11, 'Doble', 43.23),
							(32, 11, 'Familiar', 41.12),
							(33, 11, 'Individual', 31.5),
							(34, 12, 'Doble', 35.35),
							(35, 12, 'Familiar', 45.21),
							(36, 12, 'Individual', 25.5),
							(37, 13, 'Doble', 37.23),
							(38, 13, 'Familiar', 30.12),
							(39, 13, 'Individual', 20.5),
							(40, 14, 'Doble', 50.45),
							(41, 14, 'Familiar', 74.85),
							(42, 14, 'Individual', 45.00),
							(43, 15, 'Doble', 37.90),
							(44, 15, 'Familiar', 39.99),
							(45, 15, 'Individual', 32.85),
							(46, 16, 'Doble', 23.63),
							(47, 16, 'Familiar', 20.02),
							(48, 16, 'Individual', 20.15),
							(49, 17, 'Doble', 59.33),
							(50, 17, 'Familiar', 62.21),
							(51, 17, 'Individual', 45.5),
							(52, 18, 'Doble', 23.23),
							(53, 18, 'Familiar', 20.12),
							(54, 18, 'Individual', 10.5),
							(55, 19, 'Doble', 30.45),
							(56, 19, 'Familiar', 44.65),
							(57, 19, 'Individual', 25.40),
							(58, 20, 'Doble', 87.70),
							(59, 20, 'Familiar', 99.95),
							(60, 20, 'Individual', 76.45),
							(61, 1, 'Doble', 45.23),
							(62, 1, 'Familiar', 40.12),
							(63, 1, 'Individual', 30.5),
							(64, 1, 'Doble', 45.23),
							(65, 1, 'Familiar', 40.12),
							(66, 1, 'Individual', 30.5),
							(67, 1, 'Doble', 45.23),
							(68, 1, 'Familiar', 40.12),
							(69, 1, 'Individual', 30.5),
							(70, 1, 'Doble', 45.23),
							(71, 1, 'Doble', 45.23),
							(72, 1, 'Doble', 45.23),
							(73, 1, 'Doble', 45.23),
							(74, 1, 'Doble', 45.23),
							(75, 1, 'Doble', 45.23),
							(76, 1, 'Familiar', 49.32),
							(77, 1, 'Familiar', 49.32),
							(78, 1, 'Familiar', 49.32),
							(79, 6, 'Doble', 25.63),
							(80, 6, 'Doble', 25.63),
							(81, 12, 'Familiar', 45.21),
							(82, 12, 'Familiar', 45.21),
							(83, 12, 'Familiar', 45.21);
GO

INSERT INTO Guest VALUES	(1, 'Martha Suarez', 'Direccion ubicada en Londres'),
							(2, 'Monica Leal', 'Londres es la direccion'),
							(3, 'Carlos Pereyra', 'Se registro con dir Londres y vive en extranjero'),
							(4, 'Cristina Lorenz', 'Calle Oxford, Londres'),
							(5, 'Denisse Clover', 'Londres, Portobello'),
							(6, 'Teresa Gomez', 'Argentina'),
							(7, 'Paula Jennings', 'Uruguay'),
							(8, 'Katya Shy', 'Canada'),
							(9, 'Leonardo Patino', 'Francia'),
							(10, 'Stella Castro', 'Direccion ubicada en Birmingham'),
							(11, 'Debora Cardo', 'Birmingham  es la direccion'),
							(12, 'Kiara Molina', 'Se registro con dir Birmingham y es extranjero'),
							(13, 'Abraham Torres', 'Ciudad de Leeds'),
							(14, 'Gabriel Cardoso', 'Leeds'),
							(15, 'Omar Poliest', 'Ciudad de Manchester'),
							(16, 'Karla Shu', 'Manchester'),
							(17, 'Lautaro Castellano', 'Manchester'),
							(18, 'Malena Sanders', 'Liverpool'),
							(19, 'Sibyl Morgan', 'Ciudad de Liverpool'),
							(20, 'Haily Lady', 'Ciudad de Nottingham');
GO

INSERT INTO Booking VALUES	(1, 1, 1, '2022-01-15', '2022-01-20'),
							(2, 1, 4, '2022-02-15', '2022-02-20'),
							(3, 1, 7, '2022-03-15', '2022-03-20'),
							(4, 2, 10, '2022-04-15', '2022-04-20'),
							(5, 2, 14, '2022-05-15', '2022-05-20'),
							(6, 2, 18, '2022-06-15', '2022-06-20'),
							(7, 3, 19, '2022-07-15', '2022-07-20'),
							(8, 3, 23, '2022-08-15', '2022-08-20'),
							(9, 3, 27, '2022-08-22', '2022-08-25'),
							(10, 4, 28, '2022-08-23', '2022-08-25'),
							(11, 4, 32, '2022-08-01', '2022-08-10'),
							(12, 4, 36, '2022-09-15', '2022-09-20'),
							(13, 5, 37, '2022-10-10', '2022-10-14'),
							(14, 5, 41, '2022-10-01', '2022-10-05'),
							(15, 5, 45, '2022-01-15', '2022-01-20'),
							(16, 6, 46, '2022-02-15', '2022-02-20'),
							(17, 6, 50, '2022-03-15', '2022-03-20'),
							(18, 1, 54, '2022-04-15', '2022-04-20'),
							(19, 1, 55, '2022-05-15', '2022-05-20'),
							(20, 1, 59, '2022-06-15', '2022-06-20');
GO

INSERT INTO Booking VALUES
							(1, 20, 66, '2022-08-15', '2022-08-20'),
							(1, 19, 78, '2022-08-1', '2022-08-30'),
							(1, 18, 74, '2022-01-15', '2022-01-20'),
							(1, 17, 70, '2022-01-15', '2022-01-20'),
							(1, 16, 68, '2022-08-11', '2022-08-12'),
							(7, 11, 19, '2022-08-15', '2022-08-20'),
							(7, 19, 21, '2022-08-1', '2022-08-30'),
							(8, 18, 22, '2022-01-15', '2022-01-20'),
							(9, 17, 25, '2022-01-15', '2022-01-20'),
							(9, 16, 27, '2022-08-11', '2022-08-12');
GO

INSERT INTO Booking VALUES
							
							(20, 15, 60, '2022-08-15', '2022-08-20'),
							(18, 14, 53, '2022-10-15', '2022-10-30'),
							(1, 13, 66, '2022-10-15', '2022-10-20'),
							(1, 12, 67, '2022-10-15', '2022-10-20');