-- --- USE --- -- 
-- Selects a database to use
USE employees;

-- --- UPDATE --- -- 
-- Allows you to update data in a row/s
-- Combine with WHERE to apply changes conditionally
-- Syntax: UPDATE [table] SET [col] = [value] WHERE [condition]

-- UPDATE all ROWS
-- do not recommend in most cases
UPDATE employees
	SET hourly_pay = 15;
    
-- UPDATE BASED ON A CONDITION
UPDATE employees
	SET hourly_pay = 15
    WHERE employee_id = 4;