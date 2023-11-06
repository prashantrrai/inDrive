CREATE TABLE Booking(
	BookingId INT IDENTITY PRIMARY KEY,
	PassengerId INT FOREIGN KEY REFERENCES Passenger(PassengerId),
	DriverId INT FOREIGN KEY REFERENCES Driver(DriverId),
	VehicleId INT FOREIGN KEY REFERENCES Vehicle(VehicleId),
	RideId INT FOREIGN KEY REFERENCES Ride(RideId),
	EstimateTime DATETIME2,
	EstimateFare INT,
	PromoCodeId INT FOREIGN KEY REFERENCES Promocode(PromoCodeId),
	PaymentId INT FOREIGN KEY REFERENCES Payment(PaymentId),
	CreatedAt DATETIME2 DEFAULT GETDATE()

)

ALTER TABLE Booking
DROP COLUMN EstimateTime;


ALTER TABLE Booking
ADD EstimateTime INT;


INSERT INTO Booking(PassengerId, DriverId, VehicleId, RideId, EstimateTime, EstimateFare, PromoCodeId, PaymentId)
VALUES
(1, 1, 1, 1, 8, 160, 1, 1)

DELETE FROM Booking


SELECT * FROM Booking