CREATE TABLE [Session Management](
	SessionId INT IDENTITY PRIMARY KEY,
	StartTime DATETIME2,
	LastActivityTime DATETIME2,
	PassengerId INT FOREIGN KEY REFERENCES Passenger(PassengerId),
	IPAddress VARCHAR(30),
	Token VARCHAR(255),
	ExpiryTime DATETIME2
)

SELECT * FROM [Session Management]