CREATE TABLE [Vehicle Documentation](
	VehicleRegId UNIQUEIDENTIFIER PRIMARY KEY,
	BuyerName VARCHAR(50) NOT NULL,
	--CityId INT FOREIGN KEY REFERENCES City(CityId),
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
	--VehicleId INT FOREIGN KEY REFERENCES Vehicle(VehicleId),
)


DROP TABLE [Vehicle Documentation];