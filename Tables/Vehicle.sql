CREATE TABLE Vehicle(
	VehicleId INT IDENTITY PRIMARY KEY,
	VehicleType VARCHAR(50) NOT NULL,
	MaxSpace INT NOT NULL,
	VehicleProfile NVARCHAR(MAX) DEFAULT 'https://i.ndtvimg.com/i/2015-11/ola_650x400_51446651541.jpg'
)








--INSERT INTO Vehicle(VehicleName)
--VALUES 
--('Sedan'),
--('SUV'),
--('Luxury'),
--('Auto Rickshaw'),
--('Bike')

SELECT * FROM Vehicle

DROP TABLE Vehicle