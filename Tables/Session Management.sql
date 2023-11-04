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

INSERT INTO [Session Management](PassengerId)
VALUES

ALTER TABLE [Session Management]
ALTER COLUMN StartTime DATETIME2


ALTER TABLE ChildTable
DROP CONSTRAINT ForeignKeyConstraintName;




DROP TABLE [Session Management]