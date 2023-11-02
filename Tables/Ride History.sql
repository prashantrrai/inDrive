CREATE TABLE [Ride History] (
    RideHistoryId INT IDENTITY PRIMARY KEY,
	BookingId INT FOREIGN KEY REFERENCES Booking(BookingId),
	CancellationId INT FOREIGN KEY REFERENCES [Booking Cancellation](CancellationId),
	FeedbackId INT FOREIGN KEY REFERENCES Feedback(FeedbackId)
);
