CREATE TABLE Geofence(
	GeofenceId INT IDENTITY PRIMARY KEY,
	AreaName VARCHAR(50) NOT NULL,
	AreaType NVARCHAR(MAX) NOT NULL,		--Rural, Semi-Rural, Urban
	Coordinates NVARCHAR(MAX),
	StartDate DATETIME2 DEFAULT GETDATE(),
	EndDate DATETIME2 DEFAULT GETDATE(),
	Reason NVARCHAR(MAX),
	CityId INT FOREIGN KEY REFERENCES City(CityId),
	CreatedBy NVARCHAR(50),  
    CreatedAt DATETIME2 DEFAULT GETDATE(),
    ModifiedBy NVARCHAR(255),
    ModifiedAt DATETIME2 DEFAULT GETDATE(),
    isActive BIT DEFAULT 0
)

ALTER TABLE Geofence
ALTER COLUMN ModifiedBy VARCHAR(50)

ALTER TABLE Geofence
ADD CONSTRAINT Def_CreatedBy
DEFAULT 'ADMN001' FOR CreatedBy,
DEFAULT 'ADMN001' FOR ModifiedBy;

INSERT INTO Geofence(AreaName, AreaType, Reason, CityId)
VALUES
('Usmanpura', 'Semi-Rural', 'Regional Riots', 8)

SELECT * FROM Geofence;

DROP TABLE Geofence;