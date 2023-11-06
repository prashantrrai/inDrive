CREATE TABLE [Technician Payroll](
	TechnicianPayrollId INT IDENTITY PRIMARY KEY,
	CTC INT ,
	InHand INT ,
	Bonus INT ,
	Increment INT ,
	Insurance INT,
	PF INT,
	ESOPS INT
)

ALTER TABLE [Technician Payroll]
DROP COLUMN TechnicianId

EXEC sp_rename '[Technician Payroll].Bonus', 'Bonus %'

INSERT INTO [Technician Payroll] (CTC, InHand, [Bonus %], [Increment %], Insurance, PF, ESOPS)
VALUES
(2.74, 1.8, 15, 30, 2000, 2400, 3500)


SELECT * FROM [Technician Payroll]