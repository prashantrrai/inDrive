CREATE TABLE [Ticket Resolution] (
	ResolutionId INT IDENTITY PRIMARY KEY,
	--TicketId FOREIGN KEY REFERENCES [Support Ticket](TicketId),
	--FeedbackId FOREIGN KEY REFERENCES Feedback(FeedbackId),
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(36),
	ModifyDate DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT(1)
)