--CREATE TRIGGER RegistrationCheck
--ON DATABASE
--AFTER INSERT 
--AS
--BEGIN
--	DECLARE @IsValid BIT = 1,
--	@Email VARCHAR(255),
--	@Password VARCHAR(32),
--	@CnfPassword VARCHAR(32),
--	@Phone VARCHAR(10)

--	IF @Email IS NULL OR @Email NOT LIKE '%__%@%___%.%__%'
--	BEGIN
--		SET @IsValid = 0
--		RAISERROR ('Please enter valid Email Id', 10,1);
--		RETURN;
--	END

--	IF LEN(@Password) < 8
--	BEGIN
--		SET @IsValid = 0
--		RAISERROR ('Password must be 8 characters', 10,2);
--		RETURN;
--	END

--	IF @CnfPassword <> @Password
--	BEGIN
--		SET @IsValid = 0
--		RAISERROR ('Confirm Password not matching', 10,3);
--		RETURN;
--	END

--	IF LEN(@Phone) <> 10
--	BEGIN
--		SET @IsValid = 0
--		RAISERROR ('Phone number must be 10 Digits', 10,4);
--		RETURN;
--	END

--	IF @Phone NOT LIKE '[6-9]%' OR @Phone LIKE '%[^0-9]%'
--    BEGIN
--		SET @IsValid = 0
--        RAISERROR('Invalid Phone Number', 10, 5);
--        RETURN;
--    END


--    -- Roll back the transaction if data is not valid
--    IF @IsValid = 0
--    BEGIN
--		PRINT 'Sorry Data is Invalid to Register'
--        ROLLBACK;
--    END
--END

