-- === USE === -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- === GROUP BY ===
-- Used in combination with Aggregate Functions to combine rows with the same value in a given column
-- Syntax: SELECT [aggregate_function]([column]) FROM [table] GROUP BY [different_column];
-- example: grouping employees to each business and finding the average hourly_pay
SELECT business_id, AVG(hourly_pay) 
	FROM employees
    GROUP BY business_id;
-- --------------------------------------------------------------------------------------------------------------------------