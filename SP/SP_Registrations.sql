CREATE PROCEDURE SP_Registration
	@Email VARCHAR(255),
	@Password VARCHAR(32),
	@CnfPassword VARCHAR(32),
	@Phone VARCHAR(10)
AS
BEGIN
	IF @Email IS NULL OR @Email NOT LIKE '%__%@%___%.%__%'
	BEGIN
		RAISERROR ('Please enter valid Email Id', 10,1);
		RETURN;
	END

	IF LEN(@Password) < 8
	BEGIN
		RAISERROR ('Password must be 8 characters', 10,2);
		RETURN;
	END

	IF @CnfPassword <> @Password
	BEGIN
		RAISERROR ('Confirm Password not matching', 10,3);
		RETURN;
	END

	IF LEN(@Phone) <> 10
	BEGIN
		RAISERROR ('Phone number must be 10 Digits', 10,4);
		RETURN;
	END

	IF @Phone NOT LIKE '[6-9]%' OR @Phone LIKE '%[^0-9]%'
    BEGIN
        RAISERROR('Invalid Phone Number', 10, 5);
        RETURN;
    END

	RAISERROR('Registration Successfully Done', 10, 6);
END


EXEC SP_Registration @Email = 'prashantrai@gmail.com', @Password = 'admin123', @CnfPassword = 'admin123', @Phone = 7359030960;


DROP PROCEDURE SP_Registration