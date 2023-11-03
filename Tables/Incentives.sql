CREATE TABLE Incentive(
	IncentiveId INT IDENTITY PRIMARY KEY,
	TotalRides INT,
	[Incentive %] INT,
	DriverPayrollId INT FOREIGN KEY REFERENCES Driver(DriverPayrollId)
)

ALTER TABLE Incentive 
ADD CONSTRAINT FK_DriverPayrollId FOREIGN KEY (DriverPayrollId) REFERENCES [Driver Payroll](DriverPayrollId)

SELECT * FROM Incentive

DROP TABLE Incentive;