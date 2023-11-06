CREATE TABLE [Driver Payroll](
	DriverPayrollId INT IDENTITY PRIMARY KEY,
	CTC INT ,
	InHand INT ,
	Bonus INT ,
	Increment INT ,
	Insurance INT,
	PF INT,
	ESOPS INT,
	IncentiveId INT FOREIGN KEY REFERENCES Incentive(IncentiveId),
)

ALTER TABLE [Driver Payroll]
DROP COLUMN DriverId

EXEC sp_rename '[Driver Payroll].Increment', 'Increment %'

INSERT INTO [Driver Payroll] (CTC, InHand, [Bonus %], [Increment %], Insurance, PF, ESOPS, IncentiveId)
VALUES
(2.74, 1.8, 15, 30, 2000, 2400, 3500, 1)

DELETE FROM [Driver Payroll]
DBCC CHECKIDENT ('Driver Payroll', RESEED, 0)

SELECT * FROM [Driver Payroll]