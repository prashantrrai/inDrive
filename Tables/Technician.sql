CREATE TABLE Technician(
	TechnicianId INT IDENTITY PRIMARY KEY,
	TechnicianName VARCHAR(50) NOT NULL,
	TechnicianEmail VARCHAR(100) NOT NULL,
	Password VARCHAR(32) NOT NULL,
	CnfPassword VARCHAR(32) NOT NULL,
	TechnicianPhone VARCHAR(10) NOT NULL,
	CityId INT FOREIGN KEY REFERENCES City(CityId),
	AccessId  VARCHAR(10) FOREIGN KEY REFERENCES [Access Control](AccessId),
	Rating DECIMAL(2, 1) CHECK (Rating >= 1.0 AND Rating <= 5.0),
	Assigned BIT DEFAULT 0,
	TechnicianProfile NVARCHAR(MAX) DEFAULT('https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg'),
	TechnicianPayrollId INT FOREIGN KEY REFERENCES TechnicianPayroll(TechnicianPayrollId),
	IncentiveId INT FOREIGN KEY REFERENCES Incentive(IncentiveId),
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(36),
	ModifyDate DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT(1)
)

ALTER TABLE Technician
ADD IncentiveId INT

ALTER TABLE Technician
ADD CONSTRAINT FK_Technician_IncentiveId FOREIGN KEY (IncentiveId) REFERENCES Incentive(IncentiveId)

SELECT * FROM Technician;

DROP TABLE Technician;