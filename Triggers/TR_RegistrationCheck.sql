CREATE TRIGGER TR_RegistrationCheck
ON DATABASE
AFTER INSERT
AS
BEGIN
    DECLARE @IsValid BIT = 1;
    DECLARE @Email VARCHAR(255);
    DECLARE @Password VARCHAR(32);
    DECLARE @CnfPassword VARCHAR(32);
    DECLARE @Phone VARCHAR(10);

    -- Get the values from the inserted table for the specific user
    SELECT
        @Email = Email,
        @Password = Password,
        @CnfPassword = ConfirmPassword,
        @Phone = Phone
    FROM inserted;

    -- Check the conditions for validation
    IF @Email IS NULL OR @Email NOT LIKE '%__%@%___%.%__%'
    BEGIN
        SET @IsValid = 0;
        RAISERROR ('Please enter a valid Email Id', 10, 1);
        RETURN;
    END

    IF LEN(@Password) < 8
    BEGIN
        SET @IsValid = 0;
        RAISERROR ('Password must be at least 8 characters', 10, 2);
        RETURN;
    END

    IF @CnfPassword <> @Password
    BEGIN
        SET @IsValid = 0;
        RAISERROR ('Confirm Password does not match', 10, 3);
        RETURN;
    END

    IF LEN(@Phone) <> 10
    BEGIN
        SET @IsValid = 0;
        RAISERROR ('Phone number must be 10 digits', 10, 4);
        RETURN;
    END

    IF @Phone NOT LIKE '[6-9]%' OR @Phone LIKE '%[^0-9]%'
    BEGIN
        SET @IsValid = 0;
        RAISERROR ('Invalid Phone Number', 10, 5);
        RETURN;
    END



    -- Roll back the transaction if data is not valid
    IF @IsValid = 0
    BEGIN
        PRINT 'Sorry, Data is Invalid to Register';
        ROLLBACK;
    END


	RAISERROR('Registration Successfully Done', 10, 6);
END;
