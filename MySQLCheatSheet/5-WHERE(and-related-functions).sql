-- --- USE --- -- 
-- Selects a database to use
USE employees;

-- --- WHERE --- -- 
-- Filters data from a SELECT query based on conditions (logical operators like: =, <>, >=, etc)
-- SELECT [cols] FROM [table] WHERE [condition];
SELECT * FROM employees WHERE employee_id = 2;
-- --------------------------------------------------------------------------------------------------------------------------


-- --- AND --- --  
-- returns a row only if both conditions are true
SELECT * FROM employees
	WHERE employee_id > 2 AND hourly_pay > 13;
-- --------------------------------------------------------------------------------------------------------------------------

-- --- OR --- --  
-- returns a row if either condition is true
SELECT * FROM employees
	WHERE business_id = 3 OR hourly_pay > 15;
-- --------------------------------------------------------------------------------------------------------------------------