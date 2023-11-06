CREATE TABLE [Current Location](
	LocationId INT IDENTITY PRIMARY KEY,
	LocationName VARCHAR(50) NOT NULL,
	CityId INT FOREIGN KEY REFERENCES City(CityId),
	Coordinates NVARCHAR(MAX),
	GeofenceId INT FOREIGN KEY REFERENCES Geofence(GeofenceId),
	CreatedBy NVARCHAR(255),  
    CreatedAt DATETIME2 DEFAULT GETDATE(),
    ModifiedBy NVARCHAR(255),
    ModifiedAt DATETIME2 DEFAULT GETDATE(),
    isActive BIT DEFAULT 0
)


ALTER TABLE [Current Location]
ALTER COLUMN CreatedBy VARCHAR(50)

ALTER TABLE [Current Location]
ALTER COLUMN ModifiedBy VARCHAR(50)

ALTER TABLE  [Current Location]
ADD CONSTRAINT Def_CreatedBy_CurrentLocation
DEFAULT 'ADMN001' FOR CreatedBy,
DEFAULT 'ADMN001' FOR ModifiedBy;

INSERT INTO [Current Location](LocationName, CityId, GeofenceId)
VALUES
('Usmanpura', 8, 1)

UPDATE [Current Location]
SET LocationName = 'Navrangpura', isActive =1
WHERE LocationId =1

SELECT * FROM [Current Location];




DROP TABLE [Current Location];