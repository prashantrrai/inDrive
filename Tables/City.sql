CREATE TABLE City(
	CityId INT IDENTITY PRIMARY KEY,
	CityName VARCHAR(50) NOT NULL,
	Coordinates NVARCHAR(MAX),
	StateId INT FOREIGN KEY REFERENCES State(StateId),
	CreatedBy NVARCHAR(50),  
    CreatedAt DATETIME2 DEFAULT GETDATE(),
    ModifiedBy NVARCHAR(50),
    ModifiedAt DATETIME2 DEFAULT GETDATE(),
    isActive BIT DEFAULT 0
)

ALTER TABLE City
ADD GeofenceId INT

ALTER TABLE City
ADD CONSTRAINT FK_City_StateId FOREIGN KEY (StateId) REFERENCES State(StateId)


BULK INSERT City
FROM 'C:\Users\sscss\Documents\SQL Server Management Studio\Cab Booking System\Data\citydata.csv'
WITH
	(
         FIRSTROW = 2,
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
	)
GO


SELECT * FROM City;

TRUNCATE TABLE City;
DROP TABLE City;

UPDATE City
SET CreatedBy = NULL;


