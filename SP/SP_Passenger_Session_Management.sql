CREATE PROCEDURE SP_Passenger_Session_Management
	@Email VARCHAR(100),
	@Password VARCHAR(32)
AS
BEGIN
	--DECLARE @PassengerId INT = (SELECT PassengerId FROM Passenger WHERE PassengerEmail = @Email),
	DECLARE @isLogin BIT = (SELECT isLogin FROM Passenger  WHERE PassengerEmail = @Email) , 
			@CurrentFailedAttempts INT = (SELECT FailedLoginAttempts FROM Passenger WHERE PassengerEmail = @Email),
			@SessionId INT = (SELECT SessionId FROM Passenger  WHERE PassengerEmail = @Email)


	IF @EMAIL IS NULL OR @Email NOT LIKE '%__%@%___%.%__%'
		BEGIN
			RAISERROR ('Email is not Valid', 10,1);
			RETURN;
		END

	IF NOT EXISTS (SELECT 1 FROM Passenger WHERE PassengerEmail = @Email)
		BEGIN
			RAISERROR ('Email does not exist in our database', 10,2)
			RETURN;
		END
	
	IF @Password IS NULL OR LEN(@Password) < 8
		BEGIN
			RAISERROR('Password must be 8 characters', 10,3)
			RETURN;
		END

	IF @Password <> (SELECT Password FROM Passenger WHERE PassengerEmail = @Email)
		BEGIN
			RAISERROR ('Wrong Password Entered', 10,4)
			--SET @isLogin = 0

			UPDATE Passenger
			SET FailedLoginAttempts = @CurrentFailedAttempts + 1
			WHERE PassengerEmail = @Email

			RAISERROR('Login Failed', 10,5)

			RETURN;
		END



		RAISERROR('Login Successfull', 10,6)

		UPDATE Passenger
		SET isLogin = 1
		WHERE PassengerEmail = @Email

		UPDATE Passenger
		SET LastLogin = GETDATE()
		WHERE PassengerEmail = @Email

		UPDATE [Session Management]
		SET StartTime = GETDATE(), LastActivityTime = GETDATE(), ExpiryTime = DATEADD(MINUTE, 20, GETDATE()) 
		WHERE SessionId = @SessionId

		RAISERROR('Passenger Session Updated', 10,7)

END	



EXEC SP_Passenger_Session_Management @Email = 'anurag@gmail.com', @Password = 'a4nurag67'


DROP PROC SP_Passenger_Session_Management








--CREATE FUNCTION [Failed Login Attempts] ( @CurrentFailedAttempts INT = (SELECT FailedLoginAttempts FROM Passenger) )
--RETURNS INT
--AS
--BEGIN
--	RETURN  UPDATE Passenger
--			SET FailedLoginAttempts = @CurrentFailedAttempts + 1
--END

SELECT SessionId FROM Passenger  WHERE PassengerEmail = 'subham@gmail.com'