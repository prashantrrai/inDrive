CREATE TABLE Ride (
    RideId INT IDENTITY PRIMARY KEY,
    StartLocation VARCHAR(255),
    EndLocation VARCHAR(255),
	WAYPoints VARCHAR(255) DEFAULT 'NO WAY POINTS',
	TotalDistance DECIMAL(10, 2),
	TotalTime INT,
	RideStatus INT  CHECK (RideStatus IN (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)),
    StartTime DATETIME,
    EndTime DATETIME,
	AssigningTime DATETIME,
	Nearest BIT DEFAULT 0,
	NearestArray NVARCHAR(MAX)
);


ALTER TABLE Ride
ADD CONSTRAINT def_StartTime_Ride
DEFAULT GETDATE() FOR StartTime,
DEFAULT GETDATE() FOR EndTime;

DELETE FROM Ride
DBCC CHECKIDENT ('Ride', RESEED, 0)

INSERT INTO Ride(StartLocation, EndLocation, WAYPoints, TotalDistance, TotalTime, RideStatus)
VALUES
('Ahmedabad', 'Junagadh', 'Rajkot', 275, 8, 0)

SELECT * FROM Ride

/*
const Status = {
  PENDING: 0,
  ASSIGNING: 1,
  REJECTED: 2,
  CANCELLED: 3,
  ACCEPTED: 4,
  ARRIVED: 5,
  STARTED: 6,
  COMPLETED: 7,
  HOLD: 8
  PICKED: 9,
};
*/