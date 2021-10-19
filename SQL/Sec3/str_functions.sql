/* 
Strings built-in functions
*/

-- UPPER()

/* 
 - UPPER() convert strings to uppercase.
*/

SELECT	first_name,
		UPPER(first_name) AS name_upper
FROM citizen;


-- LOWER()

/* 
 - LOWER() convert strings to lowercase.
*/

SELECT	first_name,
		lower(first_name) AS name_upper
FROM citizen;

-- LENGTH()

SELECT LENGTH('john smith');

-- >>> 10
/* 
- Return the length of a string in bytes
*/

SELECT	LENGTH('John Smith');

-- LEFT(string, int)
/* 
Return the leftmost number of characters as specified in the functions param.
*/
SELECT 	LEFT('John Smith', 4);
-- >>> John
-- RIGHT()
/* 
Return the rightmost number of characters as specified in the functions param.
*/
SELECT 	RIGHT('John Smith', 5);
-- >> Smith

-- SUBSTRING()
/* 
- Extracts a substring from a string
- param length is optional 
*/
-- SUBSTRING(string, start, length)
SELECT	UPPER(SUBSTRING('john smith', 5));
-- >>> SMITH

-- return the last 3 strings:
SELECT SUBSTRING('John Doe', -3);
-- >>> Doe

-- LTRIM()   short for left trim, which removes all spacing to the left of the string.
SELECT	LTRIM("     John");

-- RTRIM()   short for right trim, which removes all spacing to the right of the string.
SELECT	LTRIM("John              ");

-- TRIM()  removes all spacing left and right from the string
SELECT	TRIM("     John              ");
/* 
Removes unwanted strings
*/
SELECT TRIM('***' FROM '***string***');


-- LOCATE()
-- Returns the first index for the string location
SELECT LOCATE('john', 'John Smith');
-- >>> 1  becuase john occured on the first index
-- LOCATE() returns zero if not match found.

-- REPLACE(original string, to be replaced, replace by) replaces a string for another

SELECT REPLACE('John Smith', 'John', 'Mr John');

SELECT REPLACE("john smith", "j", " J");



