CREATE VIEW [ Ride History Details]
AS
SELECT 
	Passenger.PassengerName,
	Passenger.PassengerPhone,
	Passenger.PassengerProfile,
	Driver.DriverName,
	Driver.DriverPhone,
	Driver.DriverProfile,
	[Vehicle Documentation].VehicleModel,
	[Vehicle Documentation].NumberPlate,
	Vehicle.MaxSpace,
	Ride.StartLocation,
	Ride.EndLocation,
	Booking.EstimateFare,
	Booking.EstimateTime,
	Payment.MerchantName,
	Payment.PaymentMethod,
	Payment.PaymentStatus,
	Payment.TransactionId,
	Feedback.Rating,
	Feedback.Review

FROM [Ride History]
	JOIN Booking ON [Ride History].BookingId = Booking.BookingId
	JOIN Passenger ON Booking.PassengerId = Passenger.PassengerId
	JOIN Driver ON Booking.DriverId = Driver.DriverId
	JOIN [Vehicle Documentation] ON Driver.VehicleRegId = [Vehicle Documentation].VehicleRegId
	JOIN Vehicle ON Booking.VehicleId = Vehicle.VehicleId
	JOIN Ride ON Booking.RideId = Ride.RideId
	JOIN Payment ON Booking.PaymentId = Payment.PaymentId
	JOIN Feedback ON [Ride History].FeedbackId = Feedback.FeedbackId



SELECT * FROM [ Ride History Details];

DROP VIEW [ Ride History Details]