CREATE TABLE Incentive(
	IncentiveId INT IDENTITY PRIMARY KEY,
	TotalRides INT,
	[Incentive %] INT
)

ALTER TABLE Incentive 
ADD CONSTRAINT FK_DriverPayrollId FOREIGN KEY (DriverPayrollId) REFERENCES [Driver Payroll](DriverPayrollId)


ALTER TABLE Incentive
DROP COLUMN DriverPayrollId

INSERT INTO Incentive
VALUES
(10, 25),
(15, 35),
(25, 60)

EXEC sp_rename 'Incentive.TotalRides', 'Total Orders'

SELECT * FROM Incentive

DROP TABLE Incentive;