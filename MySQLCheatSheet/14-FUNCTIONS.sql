-- === USE === -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- === FUNCTIONS === -- 
-- Allows you to pass in parameters or "inputs" and receive a value in return
-- Parameters refer to column/s, based on your query (so it can be affected by things like WHERE)
-- ---------------------------------------------------------

-- COUNT --
-- counts the number of rows from a query
SELECT COUNT(*) FROM employees;
-- ---------------------------------------------------------

-- MAX --
-- Maximum value within a column
SELECT MAX(hourly_pay) FROM employees;
-- ---------------------------------------------------------

-- MIN --
-- Lowest/minimum value within a column
SELECT MIN(hourly_pay) FROM employees;
-- ---------------------------------------------------------

-- AVG --
-- Returns the average of all values in a column
SELECT AVG(hourly_pay) FROM employees;
-- ---------------------------------------------------------

-- SUM --
-- Returns the sum of all values in a column
SELECT SUM(hourly_pay) FROM employees;
-- ---------------------------------------------------------

-- CONCAT --
-- Allows you to combine multiple strings into one
-- Note: if you input non strings (like ints) MYSQL will automatically convert it to a string
-- Syntax: CONCAT([col/string], [string]...[string])
SELECT CONCAT(employee_id, " ", full_name) FROM employees;
-- ---------------------------------------------------------


-- --------------------------------------------------------------------------------------------------------------------------