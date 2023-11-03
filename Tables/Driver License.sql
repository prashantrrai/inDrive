CREATE TABLE [Driver License](
	LicenseId UNIQUEIDENTIFIER PRIMARY KEY,
	ApplicantName VARCHAR(50) NOT NULL,
	SWD VARCHAR(50) NOT NULL,
	DateOfIssue DATETIME2 NOT NULL,
	DateOfExpiry DATETIME2 NOT NULL,
	DOB  DATETIME2 NOT NULL,
	BloodGroup VARCHAR(20) NOT NULL,
	CityId INT FOREIGN KEY REFERENCES City(CityId),
	ApplicantProfile NVARCHAR(MAX) DEFAULT('https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg'),
	VehicleAuthType VARCHAR(50) NOT NULL
)

SELECT * FROM [Driver License]