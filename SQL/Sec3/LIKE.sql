LIKE

/*
 - LIKE operator determines wether a character string matches a specific pattern.
 */
 
 -- returns all columns where firstname starting with an 'A'
 SELECT *
 FROM citizen
 WHERE first_name LIKE 'A%';
 
 SELECT *
 FROM citizen;
 
 -- Starts with a B and ends with a k
 SELECT	*
 FROM citizen
 WHERE first_name LIKE 'b%k';
 
 -- Starts with an A and ends with a k
SELECT *
FROM citizen
WHERE last_name LIKE 'A%c%';

-- Starts with an A and have exactly 4 characters long.

SELECT	*
FROM citizen
WHERE first_name LIKE 'A___';

-- starts with an A and ends with a b, but is only four character long.
WHERE last_name LIKE 'A__b';


-- Challenge: lastname A 2nd char, C 3rd char, and D 2nd char from the end.
SELECT	*
FROM citizen
WHERE last_name LIKE '_un%r_';

-- Fetch 'India' from 'I love India'
SELECT RIGHT('I love India', 5) AS India;

SELECT SUBSTRING('I love India', 8, 5);
