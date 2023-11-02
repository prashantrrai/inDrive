CREATE TABLE [Support Ticket] (
	TicketId INT IDENTITY PRIMARY KEY,
	--TechnicianId FOREIGN KEY REFERENCES Technician(TechnicianId),
	--PassengerId FOREIGN KEY REFERENCES Passenger(PassengerId),
	--DriverId FOREIGN KEY REFERENCES Driver(DriverId),
	--BookingId FOREIGN KEY REFERENCES Booking(BookingId),
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(36),
	ModifyDate DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT(1)
)