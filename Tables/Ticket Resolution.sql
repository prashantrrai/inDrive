CREATE TABLE [Ticket Resolution] (
	ResolutionId INT IDENTITY PRIMARY KEY,
	TicketId INT FOREIGN KEY REFERENCES [Support Ticket](TicketId),
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(36),
	ModifyDate DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT(1)
)

ALTER TABLE [Ticket Resolution]
ADD Review VARCHAR(255)

INSERT INTO [Ticket Resolution](TicketId, CreatedBy, ModifyBy, Review)
VALUES
(1, 'PSGR002', 'PSGR002', 'Thanks for helping')

SELECT * FROM [Ticket Resolution]