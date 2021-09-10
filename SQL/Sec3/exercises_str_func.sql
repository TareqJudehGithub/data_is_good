-- Exercises on String Functions

-- fetch id, firstname, and phone from citizen table. Firstname should be appearing in uppercase.
SELECT	id,
		UPPER(first_name) AS firstname,
        phone,
        REPLACE(phone, '-', ' ') AS clean_phone
FROM citizen
ORDER BY id;


-- fetch id, lasttname, and phone from citizen table. Lastname should be appearing in lowercase.

SELECT	id,
		LOWER(last_name) AS lastname,
        replace(phone, '-', ' ') AS phone
FROM citizen;

-- fetch id, firstname, and the length of the firstname. Sort according to firstname length in a descending order.

SELECT	id,
		first_name,
        LENGTH(first_name) AS first_name_length
FROM citizen
ORDER BY 3 DESC;


-- fetch id, first four characters from first_name, and last fours characters of last_name
SELECT	id,
		LEFT(first_name, 4) AS first_4,
        RIGHT(last_name, 4) AS last_4
FROM citizen;


-- fetch id, fullname from citizen table
SELECT	id,
		CONCAT(first_name, ' ', last_name) AS full_name
FROM citizen;


-- fetch id, fullname from citizen table, where full name here is concatenated from the first 4 char of first name,
-- and from the last 4 char of lastname.

SELECT	id,
		CONCAT(LEFT(first_name, 4), ' ', RIGHT(last_name, 4)) AS full_name
FROM citizen;

