CREATE TABLE Passenger(
	PassengerId INT IDENTITY PRIMARY KEY,
	PassengerName VARCHAR(50) NOT NULL,
	PassengerEmail VARCHAR(100) NOT NULL,
	Password VARCHAR(32) NOT NULL,
	CnfPassword VARCHAR(32) NOT NULL,
	PassengerPhone VARCHAR(10) NOT NULL,
	CityId INT FOREIGN KEY REFERENCES City(CityId),
	AccessId  VARCHAR(10) FOREIGN KEY REFERENCES [Access Control](AccessId),
	PassengerProfile NVARCHAR(MAX) DEFAULT('https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg'),
	LastLogin DATETIME2 DEFAULT GETDATE(),
	FailedLoginAttempts INT DEFAULT 0,
	SessionId INT FOREIGN KEY REFERENCES [Session Management](SessionId),
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(36),
	ModifyDate DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT(1)
)

EXEC sp_rename 'Passenger.isActive', 'isLogin'

ALTER TABLE Passenger
ADD isBlocked BIT DEFAULT 0,
    BlockStartTime DATETIME2 DEFAULT GETDATE(),
    BlockEndTime DATETIME2 DEFAULT DATEADD(Minute, 120, GETDATE()),
    isVerifiedByOTP BIT DEFAULT 0;



ALTER TABLE Passenger
ADD CONSTRAINT DF_Email_Unique UNIQUE(PassengerEmail);


ALTER TABLE Passenger
ADD DEFAULT 0 FOR isLogin;


ALTER TABLE Passenger
ADD CONSTRAINT FK_SessionId FOREIGN KEY (SessionId) REFERENCES [Session Management](SessionId)

INSERT INTO Passenger(PassengerName, PassengerEmail, Password, CnfPassword, PassengerPhone, CityId, AccessId, SessionId, CreatedBy, ModifyBy)
VALUES
	('Anurag Joshi', 'anurag@gmail.com', 'anurag67', 'anurag67', '7896541230', 41, 'PSGR002', 1, 'PSGR002', 'PSGR002')

UPDATE Passenger
SET isBlocked = 0,
	BlockStartTime = NULL,
	BlockEndTime = NULL,
	isVerifiedByOTP = 0


DELETE FROM Passenger WHERE PassengerId =4
DBCC CHECKIDENT ('Passenger', RESEED, 0)

DROP TABLE Passenger;


TRUNCATE  TABLE Passenger


UPDATE Passenger
SET FailedLoginAttempts = 2
WHERE PassengerId = 2

SELECT * FROM Passenger;