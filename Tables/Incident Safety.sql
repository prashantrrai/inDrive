CREATE TABLE Incident (
	IncidentId INT IDENTITY PRIMARY KEY,
	Title VARCHAR(50) NOT NULL,
	Description VARCHAR(255) NOT NULL,
	BookingId INT FOREIGN KEY REFERENCES Booking(BookingId),
	LocationId INT FOREIGN KEY REFERENCES [Current Location](LocationId),
	Compensation NVARCHAR(MAX),
	IncidentStatus INT  CHECK (IncidentStatus IN (0, 1, 2, 3)),
	Witnesses VARCHAR(255) NOT NULL
)


SELECT * FROM Incident
/*
const Status = {
  Open: 0,
  In Progress: 1,
  Under Investigation: 2,
  Closed: 3
};
*/