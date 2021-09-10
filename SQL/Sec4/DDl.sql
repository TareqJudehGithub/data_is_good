-- Create table syntax
CREATE TABLE `people`.`customers` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(35) NOT NULL,
  `Age` INT UNSIGNED NOT NULL,
  `Salary` DECIMAL NULL,
  `Address` TEXT(100) NULL,
  PRIMARY KEY (`ID`))
COMMENT = 'Exercise on Data Definition Commands (DDL) commands.';


ALTER 
/* 
ALTER statement is used to addd, modify, rename or delete columns/constraints
to an existing table.

*/

-- rename column Location to Address in the customers table

ALTER TABLE customers
RENAME COLUMN Location TO Address;



/*	Create a new table called persons. The table should contain five column:
	- PersonID.  This should be the table primary key, and auto incremented.
    - firstName, LastName, Address, and City columns should hold characters.
    - characters column max length should be 255.
    
*/

CREATE TABLE persons (
	PersonID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(255) NOT NULL,
    PRIMARY KEY (PersonID)
)
COMMENT = 'Exercise create new table Persons.';

-- - Alter the table by adding a new column called DateOfBirth which should hold Date data type.
ALTER TABLE persons 
ADD DateOfBirth DATE NOT NULL;



/* 
Create a new Student table, which contain the following columns:
	- student_id.  Primary key and auto cremented.
    - first_name and last_name.  Should not be empty.
    - first_name should hold up to 30 characters.
    - last_name should hold up to 100 characters.
    - age.  integer and not accepting negative values, and of course not empty.
*/
CREATE TABLE Student (
	student_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INT UNSIGNED NOT NULL,
    PRIMARY KEY (student_id)
)
COMMENT = 'Exercise creating new table Student.';

-- ALter student table by adding three new columns: father_name, mother_name, and age.
ALTER TABLE student
ADD (
	father_name VARCHAR(30),
    mother_name VARCHAR(30),
    birth_day DATE NOT NULL DEFAULT '1999-12-31'
);

-- Update all colum names to start with an upper letter (i.e Student_ID).

-- renaming one colunm
ALTER TABLE student
RENAME COLUMN student_id TO Student_ID;

-- renaming more than one column
ALTER TABLE student
RENAME COLUMN first_name TO FirstName,
RENAME COLUMN last_name TO LastName;



ALTER TABLE student
RENAME COLUMN age TO Age,
RENAME COLUMN father_name TO MiddleName,
RENAME COLUMN mother_name TO MotherName;


-- delete student table
DROP TABLE student;


