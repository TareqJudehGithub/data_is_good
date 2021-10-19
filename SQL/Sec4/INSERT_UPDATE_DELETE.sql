-- INSERT INTO
-- INSERT INTO adds new record into a table.
-- Inserting data should be in sequence with the columns name.
-- Insert a DEFAULT value in VALUES() statement in cases like ID is set to AUTO INCREMENT, or a 
-- column with a default constraint.


USE people;


SELECT	*
FROM persons;

-- Insert a record into the persons table
INSERT INTO persons 
VALUES(DEFAULT, 'John', 'smith', '0571 Maple street, Springfield Gardens', 'Amman', '1975-06-27');

INSERT INTO persons
VALUES (DEFAULT, 'SARAH', 'brightman', '08 Al-Sabr STREET, aL-rAwabi', 'Amann', '1981-01-25');

-- Now query that table
SELECT	*
FROM persons;


-- UPDATE and SET
-- UPDATE updates existing records in columns.

-- update lastname 'smith' to start with an uppercase letter.
UPDATE persons
SET LastName = 'Smith'
WHERE PersonID = 1;

-- correct sarah brightman records in one UPDATE statement
UPDATE Persons
SET 
	FirstName = 'Sarah',
	LastName = 'Brightman',
	Address = '08 Al-Sabr Street, Al-Rawabi'
WHERE PersonID = 2;

-- update 'Amann' to its correct spelling.alter
UPDATE Persons
SET City = 'Amman'
WHERE PersonID = 2;

-- Delete Sarah's account from the table
DELETE FROM persons
WHERE PersonID = 2;

SELECT	*
FROM persons;




