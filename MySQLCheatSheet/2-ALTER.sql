-- --- USE --- -- 
-- Selects a database to use
USE employees;

-- --- ALTER --- -- 
-- Allows you to change tables after they have been created

-- --- RENAMING A TABLE --- -- 
ALTER TABLE employee_info RENAME TO employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- --- ADD --- -- 
ALTER TABLE employees ADD COLUMN email VARCHAR(200); -- Add a column
ALTER TABLE employees ADD CONSTRAINT age_check CHECK (hourly_pay >= 7.25); -- Add a constraint to a column
-- --------------------------------------------------------------------------------------------------------------------------

-- --- RENAME a column --- -- 
ALTER TABLE employees RENAME COLUMN name TO full_name; 
-- --------------------------------------------------------------------------------------------------------------------------

-- --- MODIFY --- -- 
ALTER TABLE employees MODIFY name VARCHAR(256); -- Change a column's datatype and/or constraint/s
ALTER TABLE employees MODIFY business_id INT AFTER employee_id; -- Change a column and move it
-- --------------------------------------------------------------------------------------------------------------------------

-- --- DROP --- --  
ALTER TABLE employees DROP COLUMN age; -- Deletes a column in the database
-- --------------------------------------------------------------------------------------------------------------------------