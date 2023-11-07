ALTER PROCEDURE SP_Ticket_Resolution_Status_Management 
	@Ticket_Status INT
AS
BEGIN
	DECLARE @Ticket_Resolution_isActive BIT = (SELECT isActive FROM [Ticket Resolution])

	IF @Ticket_Status IN (1,2,3,4)
		BEGIN
			IF (@Ticket_Resolution_isActive = 1 AND @Ticket_Status = 1)
				BEGIN
					UPDATE  [Ticket Resolution]
					SET Status = 2, ModifyDate = GETDATE(), ModifyBy = 'TECH004'

					RAISERROR ('Ticket Status Updated to On going from Open', 10,1)
					RETURN;
				END
	
			IF (@Ticket_Resolution_isActive = 1 AND @Ticket_Status = 2)
				BEGIN
					UPDATE  [Ticket Resolution]
					SET Status = 3, ModifyDate = GETDATE(), ModifyBy = 'TECH004'

					RAISERROR ('Ticket Status Updated to Resolved', 10,2)
					RETURN;
				END

			IF (@Ticket_Resolution_isActive = 1 AND @Ticket_Status = 3)
				BEGIN
					UPDATE  [Ticket Resolution]
					SET Status = 4, ModifyDate = GETDATE(), ModifyBy = 'TECH004', isActive = 0

					UPDATE [Support Ticket]
					SET ModifyDate = GETDATE(), ModifyBy = 'TECH004', isActive = 0

					RAISERROR ('Ticket Status Updated to Closed', 10,3)
					RETURN;
				END

			RAISERROR ('Ticket is Already Closed', 10,4)
			RETURN;
		END

	RAISERROR ('Please Enter Valid Status', 10,5)
	RETURN;

END

EXEC SP_Ticket_Resolution_Status_Management @Ticket_Status = 3

