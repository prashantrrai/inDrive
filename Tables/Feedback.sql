CREATE TABLE Feedback (
	FeedbackId INT IDENTITY PRIMARY KEY,
	Rating DECIMAL(2, 1) CHECK (Rating >= 1.0 AND Rating <= 5.0),
	Review VARCHAR(255) NOT NULL,
	CreatedBy VARCHAR(36),
	CreatedDate DATETIME2 DEFAULT GETDATE(),
	ModifyBy VARCHAR(36),
	ModifyDate DATETIME2 DEFAULT GETDATE(),
	isActive BIT DEFAULT(1)
)

ALTER TABLE  Feedback
DROP COLUMN BookingId

INSERT INTO Feedback(Rating, Review, CreatedBy, ModifyBy)
VALUES
(3.5, 'Good but needs improvement', 'PSGR002', 'PSGR002')

SELECT * FROM Feedback