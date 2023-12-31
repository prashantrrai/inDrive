CREATE TABLE Analytics(
	AnalyticsId INT IDENTITY PRIMARY KEY,
	BookingId INT FOREIGN KEY REFERENCES Booking(BookingId),
	RideHistoryId INT FOREIGN KEY REFERENCES [Ride History](RideHistoryId),
	IncidentId INT FOREIGN KEY REFERENCES Incident(IncidentId),
	PassengerId INT FOREIGN KEY REFERENCES Passenger(PassengerId),
	DriverId INT FOREIGN KEY REFERENCES Driver(DriverId),
	VehicleId INT FOREIGN KEY REFERENCES Vehicle(VehicleId),
	RideId INT FOREIGN KEY REFERENCES Ride(RideId),
	TechnicianId INT FOREIGN KEY REFERENCES Technician(TechnicianId),
	IncentiveId INT FOREIGN KEY REFERENCES Incentive(IncentiveId),
	DriverPayrollId INT FOREIGN KEY REFERENCES [Driver Payroll](DriverPayrollId),
	TechnicianPayrollId INT FOREIGN KEY REFERENCES [Technician Payroll](TechnicianPayrollId),
	SessionId INT FOREIGN KEY REFERENCES [Session Management](SessionId),
	ResolutionId INT FOREIGN KEY REFERENCES [Ticket Resolution](ResolutionId),
	PricingId INT FOREIGN KEY REFERENCES [Vehicle Pricing](PricingId),
	FeedbackId INT FOREIGN KEY REFERENCES Feedback(FeedbackId),
	CreatedBy VARCHAR(50), 
	CreatedAt DATETIME2 DEFAULT GETDATE(),
	ModifiedBy VARCHAR(50), 
	ModifiedAt DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT 1
)
INSERT INTO Analytics( BookingId, RideHistoryId, IncidentId, PassengerId, DriverId, VehicleId,
RideId, TechnicianId, IncentiveId, DriverPayrollId, TechnicianPayrollId, SessionId, ResolutionId, PricingId, FeedbackId, CreatedBy, ModifiedBy)
VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1 ,1 ,1 ,1, 1 ,1 ,1 , 'ADMN001', 'ADMN001')

SELECT * FROM Analytics

DROP TABLE Analytics