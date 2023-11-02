CREATE TABLE Driver(
	DriverId INT IDENTITY PRIMARY KEY,
	DriverName VARCHAR(50) NOT NULL,
	DriverEmail VARCHAR(100) NOT NULL,
	Password VARCHAR(32) NOT NULL,
	CnfPassword VARCHAR(32) NOT NULL,
	DriverPhone VARCHAR(10) NOT NULL,
	--CityId INT FOREIGN KEY REFERENCES City(CityId),
	--AccessId  INT FOREIGN KEY REFERENCES [Access Control](AccessId),
	Rating DECIMAL(2, 1) CHECK (Rating >= 1.0 AND Rating <= 5.0),
	Assigned BIT DEFAULT 0,
	DriverProfile NVARCHAR(MAX) DEFAULT('https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg'),
	LastLogin DATETIME2 DEFAULT GETDATE(),
	FailedLoginAttempts INT DEFAULT 0,
	--DriverPayrollId INT FOREIGN KEY REFERENCES DriverPayroll(DriverPayrollId),
	--DriverLicenseId INT FOREIGN KEY REFERENCES DriverLicense(DriverLicenseId),
	--VehicleRegId INT FOREIGN KEY REFERENCES VehicleDocumentation(VehicleRegId),
	--IncentiveId INT FOREIGN KEY REFERENCES Incentive(IncentiveId),
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(36),
	ModifyDate DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT(1)
)

SELECT * FROM Driver;

DROP TABLE Driver;