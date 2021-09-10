
/* 
https://dev.mysql.com/doc/refman/8.0/en/regexp.html

https://www.geeksforgeeks.org/mysql-regular-expressions-regexp/
*/


-- returns city names where first and last letters are vowels
SELECT 
    DISTINCT
        CITY
FROM STATION
WHERE CITY REGEXP '^[a+e+i+o+u]' AND CITY REGEXP '[a+e+i+o+u]$'