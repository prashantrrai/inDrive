CREATE TABLE [Current Location](
	LocationId INT IDENTITY NOT NULL,
	LocationName VARCHAR(50) NOT NULL,
	--CityId INT FOREIGN KEY REFERENCES City(CityId),
	Coordinates NVARCHAR(MAX),
	--GeofenceId INT FOREIGN KEY REFERENCES Geofence(GeofenceId),
	CreatedBy NVARCHAR(255),  
    CreatedAt DATETIME2 DEFAULT GETDATE(),
    ModifiedBy NVARCHAR(255),
    ModifiedAt DATETIME2 DEFAULT GETDATE(),
    isActive BIT DEFAULT 0
)


SELECT * FROM [Current Location];


DROP TABLE [Current Location];