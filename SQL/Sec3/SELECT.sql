-- Get the highest paid citizen in citizen table

SELECT	id,
		CONCAT(first_name, ' ', last_name) AS name,
        MAX(salary) AS highest_salary
FROM citizen
GROUP BY 1
ORDER BY 3 DESC
LIMIT 1;


SELECT	id,
		CONCAT(first_name, ' ', last_name) AS name,
        salary AS highest_salary
FROM citizen
ORDER BY 3 DESC
LIMIT 1;


-- Get the least paid 5 citizen from China in citizen table
SELECT 	id,
		CONCAT(first_name, ' ', last_name) AS name,
        country,
        salary
FROM citizen
WHERE country = 'China'
ORDER BY salary
LIMIT 5;

-- Distinct retieves only unique values, preventing duplicates records).

SELECT	
	DISTINCT
        COUNT(*) as country_total
FROM citizen;

-- retrieve the first 50 unique country in an asorted order

SELECT
	distinct
		country
FROM citizen
ORDER BY country
LIMIT 50;
