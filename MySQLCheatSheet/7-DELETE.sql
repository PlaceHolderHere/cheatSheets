-- --- USE --- -- 
-- Selects a database to use
USE employees;

-- --- DELETE --- -- 
-- Deletes row/s from a table; Can be used in combination with WHERE for conditions

-- --- DELETE certain values in a table --- -- 
-- Syntax: DELETE FROM [table] WHERE [condition];
DELETE FROM employees WHERE employee_id = 1;

-- --- DELETE all values in a table --- -- 
-- DO NOT RECOMMEND
DELETE FROM employees;