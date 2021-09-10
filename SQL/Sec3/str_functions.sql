/* 
Strings built-in functions
*/

UPPER()

/* 
 - UPPER() convert strings to uppercase.
*/

SELECT	first_name,
		UPPER(first_name) AS name_upper
FROM citizen;


LOWER()

/* 
 - LOWER() convert strings to lowercase.
*/

SELECT	first_name,
		lower(first_name) AS name_upper
FROM citizen;

LENGTH()
/* 
- Return the length of a string in bytes
*/

SELECT	LENGTH('John Smith');

LEFT()
/* 
Return the leftmost number of characters as specified in the functions param.
*/
SELECT 	LEFT('John Smith', 5);

RIGHT()
/* 
Return the rightmost number of characters as specified in the functions param.
*/
SELECT 	RIGHT('John Smith', 5);

SUBSTRING()
/* 
- Extracts a substring from a string
- param length is optional 
*/
SUBSTRING(string, start, length)

SELECT SUBSTRING('John Smith', 1, POSITION(' ' in 'John Smith'));


-- return the last 3 strings:
SELECT SUBSTRING('John Doe', -3);

TRIM()
/* 
Removes unwanted strings
*/
SELECT TRIM('***' FROM '***string***');


LOCATE()
SELECT LOCATE('john', 'John Smith');
/* 
- Returns the first index for the string location
*/

REPLACE()

SELECT REPLACE('John Smith', 'John', 'Mr John');