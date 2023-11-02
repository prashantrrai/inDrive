CREATE TABLE [Driver Payroll](
	DriverPayrollId INT IDENTITY PRIMARY KEY,
	--DriverId INT FOREIGN KEY REFERENCES Driver(DriverId),
	CTC INT ,
	InHand INT ,
	Bonus INT ,
	Increment INT ,
	Insurance INT,
	PF INT,
	ESOPS INT,
	--IncentiveId INT FOREIGN KEY REFERENCES Incentive(IncentiveId),
)