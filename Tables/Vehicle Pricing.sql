CREATE TABLE [Vehicle Pricing] (
    PricingId INT IDENTITY PRIMARY KEY,
	--CountryId INT FOREIGN KEY REFERENCES Country(CountryId),
	--StateId INT FOREIGN KEY REFERENCES State(StateId),
	--CityId INT FOREIGN KEY REFERENCES City(CityName),
	--VehicleId INT FOREIGN KEY REFERENCES Vehicle(VehicleId),
	DriverProfit INT,
    MinFare INT NOT NULL,
    BaseFare INT NOT NULL,
    PerMileRate INT NOT NULL,
    PerMinuteRate INT NOT NULL
)
