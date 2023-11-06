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

INSERT INTO [Support Ticket](TechnicianId, PassengerId, DriverId, BookingId, CreatedBy, ModifyBy)
VALUES
(1, 1, 1, 1, 'PSGR002', 'PSGR002')

SELECT * FROM [Support Ticket]