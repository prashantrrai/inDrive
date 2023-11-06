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

INSERT INTO [Driver License](LicenseId, ApplicantName, SWD, DateOfIssue, DateOfExpiry, DOB, BloodGroup, CityId, VehicleAuthType)
VALUES
(NEWID(), 'Dinesh Parmar', 'Mahesh Parmar', GETDATE(), GETDATE(), '2001-05-01', 'O+', 41, 'LMV + MCWG')

SELECT * FROM [Driver License]