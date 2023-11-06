CREATE TABLE Admin(
	AdminId INT IDENTITY PRIMARY KEY,
	AdminName VARCHAR(50) NOT NULL,
	AdminEmail VARCHAR(100) NOT NULL,
	Password VARCHAR(32) NOT NULL,
	CnfPassword VARCHAR(32) NOT NULL,
	AdminPhone VARCHAR(10) NOT NULL,
	CityId INT FOREIGN KEY REFERENCES City(CityId),
	AccessId  VARCHAR(10) FOREIGN KEY REFERENCES [Access Control](AccessId),
	LastLogin DATETIME2 DEFAULT GETDATE(),
	FailedLoginAttempts INT DEFAULT 0,
	CreatedBy VARCHAR(50),
	CreatedAt DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(50),
	ModifyAt DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT 1
)

ALTER TABLE Admin
ADD ModifyBy VARCHAR(10);



ALTER TABLE Admin
ADD CONSTRAINT FK_CreatedBy FOREIGN KEY (CreatedBy) REFERENCES [All User Table](UID);


ALTER TABLE Admin
ADD CONSTRAINT FK_ModifyBy FOREIGN KEY (ModifyBy) REFERENCES [All User Table](UID);

ALTER TABLE Admin
DROP CONSTRAINT FK_ModifyBy

DROP TABLE Admin;


INSERT INTO Admin (AdminName, AdminEmail, Password, CnfPassword, AdminPhone, CityId, AccessId, CreatedBy, ModifyBy )
VALUES ('Prashant Rai', 'admin@gmail.com', 'admin@123', 'admin@123', '9841232569', 8, 'ADMN001', 'ADMN001', 'ADMN001');

SELECT * FROM Admin;

DELETE FROM Admin WHERE AdminId = 3;
DBCC CHECKIDENT ('Admin', RESEED, 0);


--joins to find admins country, state, city
SELECT Admin.AdminName, City.CityName, State.StateName, Country.CountryName
FROM Admin
JOIN City ON Admin.CityId = City.CityId
JOIN State ON City.StateId  = State.StateId
JOIN  Country ON State.CountryId = Country.CountryId