CREATE TRIGGER TR_Ride_Order_Placement
ON Ride
AFTER INSERT
AS
BEGIN
	PRINT 'Order placed successfully. Enjoy your Day';
END



ENABLE TRIGGER TR_Ride_Order_Placement ON Ride;

DISABLE TRIGGER TR_Ride_Order_Placement ON Ride;

DROP TRIGGER  TR_Ride_Order_Placement


INSERT INTO Ride(StartLocation, EndLocation, WAYPoints, TotalDistance, TotalTime, RideStatus)
VALUES
('Rajkot', 'Morbi', 'Tankara', 70, 2, 0)

