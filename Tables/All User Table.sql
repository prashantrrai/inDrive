CREATE TABLE [All User Table](
	UID UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
	AccessId VARCHAR(10) FOREIGN KEY REFERENCES [Access Control](AccessId),
	AdminId INT FOREIGN KEY REFERENCES Admin(AdminId),
	PassengerId INT FOREIGN KEY REFERENCES Passenger(PassengerId),
	DriverId INT FOREIGN KEY REFERENCES Driver(DriverId),
	TechnicianId INT FOREIGN KEY REFERENCES Technician(TechnicianId)
)

INSERT INTO [All User Table](AccessId, AdminId, PassengerId, DriverId, TechnicianId)
VALUES 
('ADMN001', 1, NULL, NULL, NULL),
('PSGR002', NULL, 1, NULL, NULL),
('DRVR003', NULL, NULL, 1, NULL),
('TECH004', NULL, NULL, NULL, 1)

SELECT * FROM [All User Table]


DROP TABLE [All User Table];