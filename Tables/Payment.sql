CREATE TABLE Payment (
	PaymentId INT IDENTITY PRIMARY KEY,
	PayeeName VARCHAR(50) NOT NULL,
	MerchantName VARCHAR(50) NOT NULL,
	PaymentMethod VARCHAR(50) NOT NULL,
	PaymentStatus BIT,
	Amount INT,
	TransactionId UNIQUEIDENTIFIER DEFAULT(NEWID())
)

INSERT INTO Payment(PayeeName, MerchantName, PaymentMethod, PaymentStatus, Amount)
VALUES
('Subham Shah', 'Paytm', 'UPI', 1, 160)

SELECT * FROM Payment