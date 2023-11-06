CREATE TABLE Setting(
	SettingId INT IDENTITY PRIMARY KEY,
	RIDETIMEOUT INT NOT NULL DEFAULT 10,
	STOPS INT NOT NULL DEFAULT 0,
	EMAIL_USER  NVARCHAR(MAX),
	EMAIL_PASSWORD NVARCHAR(MAX),
	AccountSid NVARCHAR(MAX),
	AuthToken NVARCHAR(MAX),
	Twilio_PhoneNumber VARCHAR(10),
	STRIPE_Secret_key NVARCHAR(MAX),
	STRIPE_Publishable_key NVARCHAR(MAX),
)

INSERT INTO Setting (RIDETIMEOUT, STOPS, EMAIL_USER, EMAIL_PASSWORD, AccountSid, AuthToken, Twilio_PhoneNumber, STRIPE_Secret_key, STRIPE_Publishable_key)
VALUES
(60, 2, 'krystal.feest66@ethereal.email', 'WX1TMcHyvRcYAn7dJj', 'AC3d5853ac69de288ef829049a44a36fa', '817880e3f75eaafa1a1dbcc47f3631e', 
'1762224581', 'sk_test_51NZeiUANXK9scyulpxLuZ2UL5HvCqJBALzHeOfXQxDljxeroEWHfM9Gz9hdOau5mV9tyHQx36q5g6HcVPAvlXiA00iaZTcfFv', 
'pk_test_51NZeiUANXK9scyulUjawM5Gzvx6F6MOm8nzHj96fghdbp1d6bOwX6ttBrtNXXHAi5S5ga7RH7MHyRwpqUXFSJ6Q00kvn8Jkgu')

SELECT * FROM Setting

DELETE FROM Setting
DBCC CHECKIDENT ('Setting', RESEED, 0);
SELECT * FROM Setting