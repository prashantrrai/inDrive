CREATE TABLE [Technician Payroll](
	TechnicianPayrollId INT IDENTITY PRIMARY KEY,
	TechnicianId INT FOREIGN KEY REFERENCES Technician(TechnicianId),
	CTC INT ,
	InHand INT ,
	Bonus INT ,
	Increment INT ,
	Insurance INT,
	PF INT,
	ESOPS INT
)

SELECT * FROM [Technician Payroll]