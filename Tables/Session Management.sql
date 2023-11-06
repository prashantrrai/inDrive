CREATE TABLE [Session Management](
	SessionId INT IDENTITY PRIMARY KEY,
	StartTime DATETIME2,
	LastActivityTime DATETIME2,
	IPAddress VARCHAR(30),
	Token VARCHAR(255),
	ExpiryTime DATETIME2
)



INSERT INTO [Session Management](PassengerId)
VALUES

ALTER TABLE [Session Management]
ALTER COLUMN StartTime DATETIME2


ALTER TABLE ChildTable
DROP CONSTRAINT ForeignKeyConstraintName;

ALTER TABLE [Session Management]
DROP CONSTRAINT default_time

ALTER TABLE [Session Management]
ADD CONSTRAINT default_IP_Token
DEFAULT '192.168.29.174' FOR IPAddress,
DEFAULT 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c' FOR Token

INSERT INTO [Session Management] (IPAddress, Token)
VALUES
	('192.168.29.174', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c')

SELECT * FROM [Session Management]


ALTER TABLE [Session Management]
ADD CONSTRAINT default_time
DEFAULT GETDATE() FOR LastActivityTime,
DEFAULT GETDATE() FOR StartTime


DELETE FROM [Session Management]
DBCC CHECKIDENT ('Session Management', RESEED, 0)

DROP TABLE [Session Management]

ALTER TABLE [Session Management]
ADD CONSTRAINT DF_ExpiryTime 
DEFAULT DATEADD(MINUTE, 20, GETDATE()) FOR ExpiryTime
