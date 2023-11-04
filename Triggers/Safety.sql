
CREATE TRIGGER safety
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
    PRINT 'You cannot create, drop, or alter tables.';
    ROLLBACK;
END;


SELECT * FROM sys.triggers WHERE name = 'safety';



-- Attempt to create a table
CREATE TABLE TestTable (ID INT);

-- Attempt to alter a table
ALTER TABLE ExistingTable ADD NewColumn INT;

-- Attempt to drop a table
DROP TABLE ExistingTable;


DROP TRIGGER Safety;