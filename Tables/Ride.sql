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