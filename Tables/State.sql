CREATE TABLE State(
	StateId INT IDENTITY PRIMARY KEY,
	StateName VARCHAR(50) NOT NULL,
	Abbreviation VARCHAR(20) NOT NULL,
	StateCapital VARCHAR(50) NOT NULL,
	CountryId INT FOREIGN KEY REFERENCES Country(CountryId),
	CreatedBy NVARCHAR(50),  
    CreatedAt DATETIME2 DEFAULT GETDATE(),
    ModifiedBy NVARCHAR(50),
    ModifiedAt DATETIME2 DEFAULT GETDATE(),
    isActive BIT DEFAULT 0
)

SELECT * FROM State;

DROP TABLE State;