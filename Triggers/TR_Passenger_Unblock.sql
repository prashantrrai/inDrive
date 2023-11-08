CREATE  TRIGGER TR_Passenger_Unblock
ON Passenger
AFTER UPDATE
AS
BEGIN
	DECLARE @PassengerId INT;

	IF UPDATE(isVerifiedByOTP)
		BEGIN
			SELECT @PassengerId = PassengerId
			FROM inserted
			WHERE isVerifiedByOTP = 1; 
		END

		IF @PassengerId IS NOT NULL
			BEGIN
				UPDATE Passenger
				SET FailedLoginAttempts = 0, BlockStartTime = NULL, BlockEndTime = NULL, isLogin = 0, isBlocked = 0, isVerifiedByOTP = 0
				WHERE PassengerId = @PassengerId;

				PRINT 'Your can now Login Again'
			END
END