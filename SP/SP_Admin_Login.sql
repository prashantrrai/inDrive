CREATE PROCEDURE SP_Admin_Login
	@Email VARCHAR(100),
	@Password VARCHAR(32)
AS
BEGIN
	IF @EMAIL IS NULL OR @Email NOT LIKE '%__%@%___%.%__%'
		BEGIN
			RAISERROR ('Email is not Valid', 10,1);
			RETURN;
		END
	
	IF NOT EXISTS (SELECT 1 FROM Admin WHERE AdminEmail = @Email)
		BEGIN
			RAISERROR ('Email does not exist in our database', 10,2)
			RETURN;
		END

	IF @Password IS NULL OR LEN(@Password) < 8
		BEGIN
			RAISERROR('Password must be 8 characters', 10,3)
			RETURN;
		END

	IF @Password <> (SELECT Password FROM Admin WHERE AdminEmail = @Email)
		BEGIN
			RAISERROR ('Wrong Password Entered', 10,4)
			RETURN;
		END

	RAISERROR('Login Successfull', 10,5)
END

EXEC SP_Admin_Login @Email = 'admin@gmail.com', @Password = 'admin@123'


DROP PROC SP_Admin_Login;
