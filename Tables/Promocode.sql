CREATE TABLE Promocode (
	PromoCodeId INT IDENTITY PRIMARY KEY,
	ValidFrom DATETIME2 NOT NULL,
	ExpiryDate DATETIME2 NOT NULL,
	[Discount %] INT NOT NULL,
	ReferredBy VARCHAR(50)
)

ALTER TABLE Promocode
ADD CONSTRAINT def_date
DEFAULT GETDATE() FOR ValidFrom,
DEFAULT GETDATE() FOR ExpiryDate;

ALTER TABLE Promocode
ADD CONSTRAINT def_discount
DEFAULT 10 FOR [Discount %];


INSERT INTO Promocode(ReferredBy)
VALUES
	('Jayesh Popat')

DELETE FROM Promocode
DBCC CHECKIDENT ('Promocode', RESEED, 0)


ALTER TABLE Promocode
ADD COUPON VARCHAR(10);

UPDATE Promocode SET Coupon = 'WELCOME10' WHERE PromoCodeId =1

SELECT * FROM Promocode


EXEC sp_rename 'Promocode.COUPON', 'Coupon';