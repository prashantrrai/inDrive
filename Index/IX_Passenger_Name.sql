CREATE INDEX IX_Passenger_Name
ON Passenger (PassengerName)

SELECT * FROM Passenger

SELECT *
FROM Passenger WITH (INDEX (IX_Passenger_Name))


DROP INDEX Passenger.IX_Passenger_Details
ALTER INDEX index_name ON table_name REBUILD;
ALTER INDEX index_name ON table_name REORGANIZE;
