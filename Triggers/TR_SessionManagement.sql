CREATE TRIGGER TR_SessionManagement
ON [Session Management]
AFTER INSERT
AS
	BEGIN
		PRINT 'Helllo World';

	END


SELECT * FROM [Session Management]