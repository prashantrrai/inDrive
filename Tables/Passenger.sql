CREATE TABLE Passenger(
	PassengerId INT IDENTITY PRIMARY KEY,
	PassengerName VARCHAR(50) NOT NULL,
	PassengerEmail VARCHAR(100) NOT NULL,
	Password VARCHAR(32) NOT NULL,
	CnfPassword VARCHAR(32) NOT NULL,
	PassengerPhone VARCHAR(10) NOT NULL,
	--CityId INT FOREIGN KEY REFERENCES City(CityId),
	--AccessId  INT FOREIGN KEY REFERENCES [Access Control](AccessId),
	PassengerProfile NVARCHAR(MAX) DEFAULT('https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg'),
	LastLogin DATETIME2 DEFAULT GETDATE(),
	FailedLoginAttempts INT DEFAULT 0,
	--SessionId INT FOREIGN KEY REFERENCES Session(SessionId),
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(36),
	ModifyDate DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT(1)
)

SELECT * FROM Passenger;

DROP TABLE Passenger;