CREATE TABLE Notification(
	NotificationId INT IDENTITY PRIMARY KEY,
	Message VARCHAR(255),
	CreatedAt DATETIME2 DEFAULT GETDATE()
)

DELETE FROM Notification
DBCC CHECKIDENT ('Notification', RESEED, 0)

INSERT INTO Notification(Message)
VALUES
	('Ride Booked Successfully')


SELECT * FROM Notification