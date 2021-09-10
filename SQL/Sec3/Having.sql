-- Having
/* 
- We cannot use WHERE in filter aggregation functions; because WHERE should be before GROUP BY, but the data
  is not grouped yet, so we will be getting an error. Instead we use HAVING in aggregation functions filtering.
*/
SELECT	country,
		TRUNCATE(AVG(salary), 2) AS avg_salary
FROM citizen
GROUP BY 1
HAVING AVG(salary) > 300000
ORDER BY 1;

-- Challenge: fetch gender, and their respective average salary which is above 400000.

SELECT 	gender,
		ROUND(AVG(salary)) AS "average salary"
FROM citizen
GROUP BY 1
HAVING ROUND(AVG(salary)) > 400000;

-- fetch gender with the HIGHEST salary
SELECT 	gender,
		MAX(salary)
FROM citizen;

-- or
SELECT 	gender,
		salary
FROM citizen
ORDER BY salary DESC
LIMIT 1;
