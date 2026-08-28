-- === USE === -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- Getting Info about a database and tables
SHOW TABLES; -- List all tables in the currently active database
DESCRIBE employees; -- lists all attributes in employees table
-- --------------------------------------------------------------------------------------------------------------------------

-- === ALIASES === --
-- Give a temporary name to a column which can be referred to in a query and can be seen in the output
-- Syntax: SELECT [column] AS [temporary name] FROM [table];
SELECT employee_id AS "ID", full_name AS "Full Name", email FROM employees;
-- --------------------------------------------------------------------------------------------------------------------------
