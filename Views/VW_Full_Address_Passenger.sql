CREATE VIEW [Full Address]
AS
SELECT
    Passenger.PassengerName,
    City.CityName,
    State.StateName,
    Country.CountryName
FROM Passenger
	JOIN
		City ON Passenger.CityId = City.CityId
	JOIN
		State ON City.StateId = State.StateId
	JOIN
		Country ON State.CountryId = Country.CountryId

WHERE Passenger.CityId = 41

SELECT * FROM [Full Address];

DROP VIEW [Full Address]
