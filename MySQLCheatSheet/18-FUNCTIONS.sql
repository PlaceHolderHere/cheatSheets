-- === USE === -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- === FUNCTIONS === --
-- Allows you to pass in parameters or "inputs" and receive a value in return
-- Parameters refer to column/s, based on your query (so it can be affected by things like WHERE)
-- --------------------------------------------------------------------------------------------------------------------------

-- === COALESCE === --
-- Input: A list of columns/values
-- Output: The first non-null value in the list
-- Could be used to provide a default value in the event that a column is NULL
SELECT full_name, COALESCE(hire_date, "NOT HIRED") AS "Hire Date" FROM employees;
-- --------------------------------------------------------------------------------------------------------------------------
