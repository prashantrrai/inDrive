CREATE TABLE [Support Ticket] (
	TicketId INT IDENTITY PRIMARY KEY,
	TechnicianId INT FOREIGN KEY REFERENCES Technician(TechnicianId),
	PassengerId INT FOREIGN KEY REFERENCES Passenger(PassengerId),
	DriverId INT FOREIGN KEY REFERENCES Driver(DriverId),
	BookingId INT FOREIGN KEY REFERENCES Booking(BookingId),
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(36),
	ModifyDate DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT(1)
)

SELECT * FROM [Support Ticket]