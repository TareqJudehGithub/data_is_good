-- create a new database named
CREATE DATABASE testDB;

-- we use the USE keyword to select a database.

-- Here, we first select the people DB, and then we can query it's tables.
USE people;

SELECT	*
FROM citizen;

-- SELECT world DB and query country.
USE world;

SELECT *
FROM country;



-- Create a CustomerDetails table under the testDB, with the following columns:
	-- ID, FirstName, LastName, Age, Gender, and ProductsBought
    -- ID is auto incremented.
    -- Age should only accept 18 or above.
    -- ProductsBought default should be zero.

USE testdb;

CREATE TABLE CustomerDetails (
	Customer_ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    Age TINYINT UNSIGNED NOT NULL,
    GENDER CHAR(6) NOT NULL,
    ProductsBought TINYINT UNSIGNED  NOT NULL DEFAULT 0,
    PRIMARY KEY(Customer_ID),
    CHECK (Age >= 18)
);

ALTER TABLE customerdetails
RENAME COLUMN GENDER TO Gender;

-- Add EmailAddress and Phone to the CustomerDetails table.
ALTER TABLE Customerdetails 
ADD COLUMN EmailAddress VARCHAR(30) NOT NULL UNIQUE,
ADD COLUMN Phone INT NOT NULL;

-- Update EmailAddress and Phone data types to varchar(50), char(12) in respective order.

ALTER TABLE customerdetails
MODIFY COLUMN EmailAddress VARCHAR(50),
MODIFY COLUMN Phone CHAR(12);


-- DROP
-- DROP is used to delete/remove a database or a a table.









-- Create a new Teachers table containing all needed data.
CREATE TABLE Teachers (
	TeacherID SMALLINT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    BirthDay DATE NOT NULL,
    Gender char(6) NOT NULL DEFAULT 'FEMALE',
    MaritalStatus char(8) NOT NULL,
    Nationality char(10) NOT NULL,
    PRIMARY KEY (TeacherID)
);

ALTER TABLE Teachers
RENAME COLUMN Birthday TO BirthDate;


 

