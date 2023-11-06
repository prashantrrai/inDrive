CREATE TABLE Vehicle(
	VehicleId INT IDENTITY PRIMARY KEY,
	VehicleType VARCHAR(50) NOT NULL,		--Sedan , SUV, Auto, Bike, Luxury, Scooters
	MaxSpace INT NOT NULL,
	VehicleProfile NVARCHAR(MAX) DEFAULT 'https://i.ndtvimg.com/i/2015-11/ola_650x400_51446651541.jpg'
)


INSERT INTO Vehicle(VehicleType, MaxSpace)
VALUES 
('Sedan', 4),
('SUV', 6),
('Luxury', 2),
('Auto Rickshaw', 3),
('Bike', 1),
('Scooter', 1)

SELECT * FROM Vehicle

DROP TABLE Vehicle