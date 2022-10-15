CREATE DATABASE Hotel;
GO

USE Hotel;
GO

CREATE TABLE Hotel(
	hotelNo		INT				PRIMARY KEY,
	hotelName	VARCHAR(30)		NOT NULL,
	city		VARCHAR(15)		NOT NULL
);
GO

CREATE TABLE Room(
	roomNo		INT,
	hotelNo		INT		FOREIGN KEY REFERENCES Hotel(hotelNo)	NOT NULL,
	[type]		VARCHAR(10)		NOT NULL,
	price		NUMERIC(10,2)	NOT NULL,
	PRIMARY KEY (roomNo, hotelNo)
);
GO

CREATE TABLE Guest(
	guestNo			INT			PRIMARY KEY,
	guestName		VARCHAR(30)	NOT NULL,
	guestAddress	VARCHAR(50)	NOT NULL
);
GO

CREATE TABLE Booking(
	hotelNo		INT											NOT NULL,
	guestNo		INT FOREIGN KEY REFERENCES Guest(guestNo)	NOT NULL,
	roomNo		INT											NOT NULL,
	dateFrom	DATE										NOT NULL,
	dateTo		DATE										NOT NULL,
	PRIMARY KEY (hotelNo, guestNo, dateFrom),
	FOREIGN KEY (roomNo, hotelNo)	REFERENCES Room(roomNo, hotelNo)
);
GO
ALTER TABLE Booking
  ADD CONSTRAINT CK_booking_fecha
  CHECK (dateFrom <= dateTo);