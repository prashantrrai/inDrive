CREATE TABLE Notification(
	NotificationId INT IDENTITY PRIMARY KEY,
	--PassengerId INT FOREIGN KEY REFERENCES Passenger(PassengerId),
	Message VARCHAR(255),
	CreatedAt DATETIME2 DEFAULT GETDATE()
)