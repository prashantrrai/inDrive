CREATE TABLE [Booking Cancellation](
	CancellationId INT IDENTITY PRIMARY KEY,
	BookingId INT FOREIGN KEY REFERENCES Booking(BookingId),
	CancellationCharges INT ,
	Reason VARCHAR(100),
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE()
)