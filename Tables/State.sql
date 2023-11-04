CREATE TABLE State(
	StateId INT IDENTITY PRIMARY KEY,
	StateName VARCHAR(50) NOT NULL,
	Abbreviation VARCHAR(20) NOT NULL,
	StateCapital VARCHAR(50) NOT NULL,
	CountryId INT FOREIGN KEY REFERENCES Country(CountryId),
	CreatedBy NVARCHAR(50),  
    CreatedAt DATETIME2 DEFAULT GETDATE(),
    ModifiedBy NVARCHAR(50),
    ModifiedAt DATETIME2 DEFAULT GETDATE(),
    isActive BIT DEFAULT 0
)


INSERT INTO State(StateName, Abbreviation, StateCapital, CountryId)
VALUES 
	('Andhra Pradesh', 'AP', 'Amaravati', 1),
	('Arunachal Pradesh', 'AR', 'Itanagar', 1),
	('Assam', 'AS', 'Dispur', 1),
	('Bihar', 'BR', 'Patna', 1),
	('Chhattisgarh', 'CG', 'Raipur', 1),
	('Goa', 'GA', 'Panaji', 1),
	('Gujarat', 'GJ', 'Gandhinagar', 1),
	('Haryana', 'HR', 'Chandigarh', 1),
	('Himachal Pradesh', 'HP', 'Shimla', 1),
	('Jharkhand', 'JH', 'Ranchi', 1),
	('Karnataka', 'KA', 'Bengaluru', 1),
	('Kerala', 'KL', 'Thiruvananthapuram', 1),
	('Madhya Pradesh', 'MP', 'Bhopal', 1),
	('Maharashtra', 'MH', 'Mumbai', 1),
	('Manipur', 'MN', 'Imphal', 1),
	('Meghalaya', 'ML', 'Shillong', 1),
	('Mizoram', 'MZ', 'Aizawl', 1),
	('Nagaland', 'NL', 'Kohima', 1),
	('Odisha', 'OD', 'Bhubaneswar', 1),
	('Punjab', 'PB', 'Chandigarh', 1),
	('Rajasthan', 'RJ', 'Jaipur', 1),
	('Sikkim', 'SK', 'Gangtok', 1),
	('Tamil Nadu', 'TN', 'Chennai', 1),
	('Telangana', 'TG', 'Hyderabad', 1),
	('Tripura', 'TR', 'Agartala', 1),
	('Uttar Pradesh', 'UP', 'Lucknow', 1),
	('Uttarakhand', 'UT', 'Dehradun', 1),
	('West Bengal', 'WB', 'Kolkata', 1),
	('Andaman and Nicobar Islands', 'AN', 'Port Blair', 1),
	('Chandigarh', 'CH', 'Chandigarh', 1),
	('Dadra and Nagar Haveli and Daman and Diu', 'DN', 'Daman', 1),
	('Delhi', 'DL', 'New Delhi', 1),
	('Jammu and Kashmir', 'JK', 'Srinagar', 1),
	('Lakshadweep', 'LD', 'Kavaratti', 1),
	('Ladakh', 'LA', 'Leh', 1),
	('Puducherry', 'PY', 'Puducherry', 1);



BULK INSERT State
FROM 'C:\Users\sscss\Downloads\statedata.csv'
WITH
	(
         FIRSTROW = 2,
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
	)
GO


SELECT * FROM State;

DROP TABLE State;