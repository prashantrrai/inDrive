CREATE TABLE [Access Control](
	AccessId UNIQUEIDENTIFIER DEFAULT(NEWID()) PRIMARY KEY,
	Role VARCHAR(50) NOT NULL,
	Control VARCHAR(255) NOT NULL
)

SELECT * FROM [Access Control];


INSERT INTO [Access Control](Role, Control) VALUES('Admin', 'View and Modify')

DROP TABLE [Access Control];