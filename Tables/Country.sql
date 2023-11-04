CREATE TABLE Country(
	CountryId INT IDENTITY  PRIMARY KEY,
	CountryName VARCHAR(50) NOT NULL,
	Abbreviation VARCHAR(20) NOT NULL,
	Currency NVARCHAR(30) NOT NULL,
	DialingCode INT NOT NULL,
	TimeZone VARCHAR(50),
	CountryCapital VARCHAR(50) NOT NULL,
	Flag NVARCHAR(MAX) NOT NULL,
    CreatedBy VARCHAR(50),  
    CreatedAt DATETIME2 DEFAULT GETDATE(),
    ModifiedBy VARCHAR(50),
    ModifiedAt DATETIME2 DEFAULT GETDATE(),
    isActive BIT DEFAULT 0
)


INSERT INTO Country (CountryName, Abbreviation, Currency, DialingCode, TimeZone, CountryCapital, Flag)
VALUES
('India', 'IND', 'Indian Rupee', 91, 'UTC+05:30', 'New Delhi', 'https://www.worldometers.info/img/flags/in-flag.gif')


SELECT * FROM Country;

DROP TABLE Country;