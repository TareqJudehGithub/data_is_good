-- Having
/* 
- We cannot use WHERE in filter aggregation functions; because WHERE should be before GROUP BY, but the data
  is not grouped yet, so we will be getting an error. Instead we use HAVING in aggregation functions filtering.
  HAVING is placed AFTER GROUP BY clause.
*/

USE people;


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

-- Challenges

-- get me all average salaries above 30000 for all countries.
SELECT	DISTINCT country AS country,
		ROUND(AVG(salary)) AS "Average Salary"
FROM citizen
GROUP BY 1
HAVING ROUND(AVG(salary)) > 30000
ORDER BY 2;


-- get me all genders and their respective average salary greater than 400000 in a desending order.

SELECT 	gender,
		ROUND(AVG(salary), 2) AS average_salary
FROM citizen
GROUP BY 1
HAVING ROUND(AVG(salary), 2) > 400000
ORDER BY 2 DESC;

-- get me the gender that hold the maximum salary

-- using MAX()
SELECT 	gender,
		MAX(salary)
FROM citizen;

-- using ORDER BY AND LIMIT
SELECT 	gender,
		salary
FROM citizen
ORDER BY salary DESC
LIMIT 1;










