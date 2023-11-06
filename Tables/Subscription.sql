CREATE TABLE Subscription (
	SubscriptionId INT IDENTITY PRIMARY KEY,
	SubscriptionPlan VARCHAR(20) NOT NULL,    --Annual, Monthly, 3 Months Pack, 6 Months Pack
	Amount INT NOT NULL,
	PromoCodeId INT FOREIGN KEY REFERENCES Promocode(PromoCodeId),
	StartDate DATETIME2 NOT NULL,
	ExpiryDate DATETIME2 NOT NULL,
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(36),
	ModifyDate DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT(1)
)

ALTER TABLE Subscription
ADD CONSTRAINT def_date_subscription
DEFAULT GETDATE() FOR StartDate,
DEFAULT GETDATE() FOR ExpiryDate;

INSERT INTO Subscription(SubscriptionPlan, Amount, PromoCodeId, CreatedBy, ModifyBy)
VALUES
('Annual', 1200, 1, 'PSGR002', 'PSGR002')

SELECT Subscription.SubscriptionPlan, Subscription.Amount, Promocode.Coupon FROM Subscription
INNER JOIN
Promocode ON Subscription.PromoCodeId = Promocode.PromoCodeId

SELECT * FROM Subscription