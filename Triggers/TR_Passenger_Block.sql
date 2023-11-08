CREATE TRIGGER TR_Passenger_Block
ON Passenger
AFTER UPDATE
AS
BEGIN
    DECLARE @PassengerId INT;

    -- Check if the FailedLoginAttempts column has been updated to 3 or more
    IF UPDATE(FailedLoginAttempts)
    BEGIN
        SELECT @PassengerId = PassengerId
        FROM inserted
        WHERE FailedLoginAttempts >= 3;

        IF @PassengerId IS NOT NULL
			BEGIN
				UPDATE Passenger
				SET isBlocked = 1, BlockStartTime = GETDATE(), BlockEndTime = DATEADD(Minute, 120, GETDATE()), isLogin = 0
				WHERE PassengerId = @PassengerId;

				PRINT 'Your Account has been Blocked for 2 Hours due to Unauthorized Access'
			END
    END
END


--ENABLE TRIGGER TR_Passenger_Block ON Passenger;
DROP TRIGGER TR_Passenger_Block


SELECT * FROM Passenger;

SELECT PassengerId FROM Passenger WHERE FailedLoginAttempts >= 3
SELECT FailedLoginAttempts FROM Passenger WHERE PassengerId = 2
