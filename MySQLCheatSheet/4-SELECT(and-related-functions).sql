-- --- USE --- -- 
-- Selects a database to use
USE employees;
        
-- --- SELECT data/rows from a table --- -- 
-- Syntax: SELECT [columns] FROM [table];
SELECT * FROM employees; -- selects all columns
SELECT employee_id, full_name FROM employees; -- selects only full_name and employee_id column
-- --------------------------------------------------------------------------------------------------------------------------

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
   
-- --- ORDER BY --- --  
-- Orders records based on a column
SELECT * FROM employees ORDER BY hourly_pay;

-- --- DESC (Descending Order) --- --
SELECT * FROM employees ORDER BY hourly_pay DESC;
-- --------------------------------------------------------------------------------------------------------------------------
