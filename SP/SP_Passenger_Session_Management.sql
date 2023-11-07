CREATE PROCEDURE SP_Passenger_Session_Management
	@Email VARCHAR(100),
	@Password VARCHAR(32)
AS
BEGIN
	DECLARE @isLogin BIT = 1  , @CurrentFailedAttempts  INT = (SELECT FailedLoginAttempts FROM Passenger)


	IF @EMAIL IS NULL OR @Email NOT LIKE '%__%@%___%.%__%'
		BEGIN
			RAISERROR ('Email is not Valid', 10,1);
			SET @isLogin = 0

			UPDATE Passenger
			SET FailedLoginAttempts = @CurrentFailedAttempts + 1

			RAISERROR('Login Failed', 10,2)

			RETURN;
		END

	IF NOT EXISTS (SELECT 1 FROM Passenger WHERE PassengerEmail = @Email)
		BEGIN
			RAISERROR ('Email does not exist in our database', 10,3)
			SET @isLogin = 0

			UPDATE Passenger
			SET FailedLoginAttempts = @CurrentFailedAttempts + 1
			RAISERROR('Login Failed', 10,4)

			RETURN;
		END
	
	IF @Password IS NULL OR LEN(@Password) < 8
		BEGIN
			RAISERROR('Password must be 8 characters', 10,5)
			SET @isLogin = 0

			UPDATE Passenger
			SET FailedLoginAttempts = @CurrentFailedAttempts + 1
			RAISERROR('Login Failed', 10,6)

			RETURN;
		END

	IF @Password <> (SELECT Password FROM Passenger WHERE PassengerEmail = @Email)
		BEGIN
			RAISERROR ('Wrong Password Entered', 10,7)
			SET @isLogin = 0

			UPDATE Passenger
			SET FailedLoginAttempts = @CurrentFailedAttempts + 1
			RAISERROR('Login Failed', 10,8)

			RETURN;
		END

	IF @isLogin = 1
		BEGIN
			RAISERROR('Login Successfull', 10,9)

			UPDATE Passenger
			SET LastLogin = GETDATE()

			UPDATE [Session Management]
			SET StartTime = GETDATE(), LastActivityTime = GETDATE(), ExpiryTime = DATEADD(MINUTE, 20, GETDATE()) 

			RAISERROR('Passenger Session Updated', 10,10)
		END
END	



EXEC SP_Passenger_Session_Management @Email = 'subham@gmail.com', @Password = 'subham123'


DROP PROC SP_Passenger_Session_Management



--CREATE FUNCTION [Failed Login Attempts] ( @CurrentFailedAttempts INT = (SELECT FailedLoginAttempts FROM Passenger) )
--RETURNS INT
--AS
--BEGIN
--	RETURN  UPDATE Passenger
--			SET FailedLoginAttempts = @CurrentFailedAttempts + 1
--END