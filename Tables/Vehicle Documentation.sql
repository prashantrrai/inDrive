CREATE TABLE [Vehicle Documentation](
	VehicleRegId UNIQUEIDENTIFIER PRIMARY KEY,
	BuyerName VARCHAR(50) NOT NULL,
	CityId INT FOREIGN KEY REFERENCES City(CityId),
	VehicleModel VARCHAR(50) NOT NULL,
	NumberPlate VARCHAR(30) NOT NULL,
	PUC VARCHAR(30) NOT NULL,
	InsuranceNumber VARCHAR(30) NOT NULL,
	RegDate DATETIME2 NOT NULL,
	ExpiryDate DATETIME2 NOT NULL,
	Type  VARCHAR(30) NOT NULL,
	Fuel  VARCHAR(30) NOT NULL,
	SeatingCapacity INT NOT NULL,
	Color VARCHAR(30) NOT NULL,
	Manufacturer VARCHAR(50) NOT NULL,
	VehicleId INT FOREIGN KEY REFERENCES Vehicle(VehicleId),
)

INSERT INTO [Vehicle Documentation] (VehicleRegId, BuyerName, CityId, VehicleModel, NumberPlate, PUC, InsuranceNumber, RegDate, ExpiryDate, Type, Fuel, SeatingCapacity, Color, Manufacturer, VehicleId)
VALUES
(NEWID(), 'Shashank Gohel', 8, 'Honda Ciaz 8000', 'AH01K2199', 'NU8779HKDB', 'GJAH67867868', GETDATE(), GETDATE(), '4 Wheeler', 'Diesel', 4, 'Snow White', 'Parin Motors', 1 );

SELECT * FROM [Vehicle Documentation]

DROP TABLE [Vehicle Documentation];