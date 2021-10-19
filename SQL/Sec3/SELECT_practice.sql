USE people;

SELECT *
FROM citizen;

-- get me the highest 5 salaries in citizen
SELECT	CONCAT(first_name, ' ', last_name) AS name,
		salary
FROM citizen
ORDER BY salary DESC
LIMIT 5;

-- get me the least 5 salaries citizen of the country china
SELECT 	CONCAT(first_name, ' ', last_name) AS name,
		country,
		salary
FROM citizen
WHERE country = 'China'
ORDER BY salary
LIMIT 5;

-- Distinct  returns only unique rows

SELECT DISTINCT country
FROM citizen;


-- get me length first 15 unique country in asorted orders
SELECT 
	DISTINCT
		country
FROM citizen
ORDER BY country
LIMIT 15;