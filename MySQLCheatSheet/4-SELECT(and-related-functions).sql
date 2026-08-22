-- === USE === -- 
-- Selects a database to use
USE employees;
        
-- === SELECT data/rows from a table === -- 
-- Syntax: SELECT [columns] FROM [table];
SELECT * FROM employees; -- selects all columns
SELECT employee_id, full_name FROM employees; -- selects only full_name and employee_id column
-- --------------------------------------------------------------------------------------------------------------------------
   
-- === ORDER BY === --  
-- Orders records based on a column
SELECT * FROM employees ORDER BY hourly_pay;

-- --- DESC (Descending Order) --- --
SELECT * FROM employees ORDER BY hourly_pay DESC;
-- --------------------------------------------------------------------------------------------------------------------------

-- === LIMIT === --
-- used to limit the number of records SELECT displays at once
-- can be used with other functions such as WHERE, ORDER BY, etc.
-- Syntax: SELECT * FROM [table] LIMIT [number];
SELECT * FROM employees LIMIT 3;
-- --------------------------------------------------------------------------------------------------------------------------