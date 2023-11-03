CREATE TABLE [Access Control](
	AccessId AS Prefix + RIGHT('00' + CAST(ID AS VARCHAR(4)), 6) PERSISTED PRIMARY KEY,
	ID INT IDENTITY NOT NULL,
	Prefix VARCHAR(4) NOT NULL,
	Role VARCHAR(50) NOT NULL,
	Control VARCHAR(255) NOT NULL
)





INSERT INTO [Access Control](Prefix, Role, Control) 
VALUES
('ADMN', 'Admin', 'Full Access Control'),
('PSGR', 'Passenger', 'View and Modify User Panel'),
('DRVR', 'Driver', 'View and Modify Driver Panel'),
('TECH', 'Technician', 'View and Modify Support Panel')

SELECT * FROM [Access Control]; 


DROP TABLE [Access Control];
