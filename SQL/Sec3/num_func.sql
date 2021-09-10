-- Numerical Functions
 
 ROUND()
 /* 
 - ROUND() rounds values to the least or to the greater number.
 - ROUND() has a 'precision' parameter, which rounds to values to a number of decimals specified.
 */
 SELECT ROUND(4.3);  
 -- 4
 
 SELECT ROUND(4.6);
 -- 5
 
 -- 'precision' parameter
 
 SELECT ROUND(10.34287, 2);
 -- 10.34
 
 -- ====================
 
 CEILING()
/* 
 - CEILING() returns the nearest interger that is greater than or equal to a 
   given number.
 - CEILING() rounds value to the nearest greater integer.
*/
SELECT CEILING(2.6);
-- >> 3  because 3 is the smallest integer greater than 2.6
 
  -- ====================
  
 FLOOR()
 /*
  - FLOOR() rounds values to the nearest least integer.
 */
 
 SELECT FLOOR(2.6);
 
  -- ====================
  
 TRUNCATE()
 
 /*
 TRUNCATE() function is used to remove digits in decimal value after the precision.
 */
 
SELECT TRUNCATE(5400.3478, 2);
-- return values with only 2 decimals

SELECT	first_name,
		last_name,
        -- return salary values with only 1 decimal:
        TRUNCATE(salary, 1)
FROM citizen;

 -- ====================
 
 ABS()
 /* 
 ABS() returns the absolute value of a given value
 */
 
 SELECT	ABS(-10);
 
 
 -- ====================
 
 RAND()
  /* 
  RAND() returns a random value between 0 and 1

  */
 SELECT RAND(); 
  
-- random value between 0 and 1 with only 2 decimals
SELECT TRUNCATE(RAND(), 2);


 -- ====================
 -- Numbers functions exercises:
 
 -- 1. Return id, firstname, lastname, salary from citezen table, rounding salary to just 1 decimal
 
 SELECT	
		id,
		first_name,
        last_name,
        ROUND(salary, 1) AS salary
 FROM citizen;
 
 -- 2.  Return id, firstname, lastname, salary from citezen table, where the salary column is ceiled.
 SELECT	id,
		first_name,
		last_name,
        salary,
        CEIL(salary) AS ceil_salary,
        CEILING(salary) AS ceiling_salary
FROM citizen;
 
 -- ====================
 
 DIV
/* 
Integer division. Discards from the division result any fractional part to the right of the decimal point.
*/
SELECT 10 DIV 3;
 
 -- ====================
 
 MOD()
 
 /* 
  - MOD() returns the remainder
 */
 SELECT MOD(10, 3);
 -- 10 % 3 = 1
 
 
 POW(X,Y)
  /* 
  Returns the value of X raised to the power of Y
  */
  SELECT POW(3, 2);
  -- 3 to the power of 2;
  
SQRT()

/* 
Returns the square root of a nonnegative number X.
*/

  
 