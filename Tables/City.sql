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



TRUNCATE TABLE City;
DROP TABLE City;

UPDATE City
SET CreatedBy = 'ADMN001';

UPDATE City
SET ModifiedBy = 'ADMN001';

UPDATE City
SET isActive =1
WHERE StateId =7

ALTER TABLE City
ADD CONSTRAINT default_createdBy
DEFAULT 'ADMN001' FOR CreatedBy,
DEFAULT 'ADMN001' FOR ModifiedBy;

INSERT INTO City(CityName, StateId)
VALUES
	('Rajkot', 7)

UPDATE City SET isActive = 1 WHERE CityName = 'Rajkot'


SELECT * FROM City;
