BEGIN TRANSACTION;

BEGIN TRY
	UPDATE Passenger
	SET FailedLoginAttempts = 1
	WHERE PassengerId = 1;

	COMMIT;
	PRINT 'Commit is Done'
END TRY

BEGIN CATCH
	ROLLBACK
	PRINT 'Rollback is Done due to some Error'
END CATCH;


SELECT * FROM Passenger
