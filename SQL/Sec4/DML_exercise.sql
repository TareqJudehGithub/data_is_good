-- Section 4 DML Exercises

-- Exercise 1
CREATE DATABASE exercises;

USE exercises;


CREATE TABLE countries (
	country_id SMALLINT AUTO_INCREMENT NOT NULL,
    country_name VARCHAR(50) NOT NULL,
    region_id  SMALLINT NOT NULL,
    PRIMARY KEY (country_id, region_id)
)
COMMENT = 'coutries table';

-- Insert 3 new records to the newly created table countries
INSERT INTO countries 
VALUES 
	(DEFAULT, 'jordan', 962),
	(DEFAULT, 'USA', 1),
	(DEFAULT, 'UK', 44);


-- Rename table name to become devisions
RENAME TABLE devisions TO divisions;


-- Exercise 2
-- Add two more records to divisions.
INSERT INTO divisions
VALUES 
	(DEFAULT, 'KSA', 968),
    (DEFAULT, 'UAE', 971);


-- correct the UEA region_id code
UPDATE divisions
SET region_id = 972
WHERE country_id = 5;


-- delete the KSA record
DELETE 
FROM divisions
WHERE country_id = 4;

SELECT 	*
FROM divisions
ORDER BY country_id;

