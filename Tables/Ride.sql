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
ALTER COLUMN AssigningTime DATETIME2

ADD CONSTRAINT DF_AssigningTime DEFAULT GETDATE() FOR AssigningTime;

ALTER COLUMN EndTime DATETIME2
ALTER COLUMN AssigningTime DATETIME2



ALTER TABLE Ride
ADD CONSTRAINT def_StartTime_Ride
DEFAULT GETDATE() FOR StartTime,
DEFAULT GETDATE() FOR EndTime;

DELETE FROM Ride
WHERE RideId BETWEEN 2 AND 33;

DBCC CHECKIDENT ('Ride', RESEED, 0)

INSERT INTO Ride(StartLocation, EndLocation, WAYPoints, TotalDistance, TotalTime, RideStatus)
VALUES
('Rajkot', 'Morbi', 'Tankara', 70, 2, 0)

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