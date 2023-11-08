CREATE PROCEDURE SP_OTP_Verification_Passenger_Login
	@Email VARCHAR(100),
	@OTP INT
AS
BEGIN
	DECLARE @isBlocked BIT = (SELECT isBlocked FROM Passenger WHERE PassengerEmail = @Email)

	IF @isBlocked = 1
		BEGIN
			PRINT 'OTP '+ CAST(@OTP AS NVARCHAR(10))+ ' Verification Successful'

			UPDATE Passenger
			SET isVerifiedByOTP = 1
			WHERE PassengerEmail = @Email
			
			RETURN;
		END

END


EXEC SP_OTP_Verification_Passenger_Login @OTP = 123456, @Email= 'anurag@gmail.com'

DROP PROC SP_OTP_Verification_Passenger_Login


SELECT isBlocked FROM Passenger WHERE PassengerEmail = 'anurag@gmail.com'