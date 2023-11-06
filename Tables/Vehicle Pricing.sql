CREATE TABLE [Vehicle Pricing] (
    PricingId INT IDENTITY PRIMARY KEY,
	CountryId INT FOREIGN KEY REFERENCES Country(CountryId), --1
	StateId INT FOREIGN KEY REFERENCES State(StateId),  --7
	CityId INT FOREIGN KEY REFERENCES City(CityId),  --8,9,10,41
	VehicleId INT FOREIGN KEY REFERENCES Vehicle(VehicleId),
	DriverProfit INT,
    MinFare INT NOT NULL,
    BaseFare INT NOT NULL,
    PerMileRate INT NOT NULL,
    PerMinuteRate INT NOT NULL
)


INSERT INTO [Vehicle Pricing]
VALUES
(1, 7, 8, 1, 50, 100, 80, 10, 2),
(1, 7, 9, 2, 80, 130, 100, 10, 2),
(1, 7, 10, 3, 100, 200, 150, 15, 5),
(1, 7, 41, 4, 10, 30, 20, 5, 1)

SELECT * FROM [Vehicle Pricing]