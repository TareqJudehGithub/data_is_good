-- INSERT INTO
-- INSERT INTO adds new record into a table.

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


