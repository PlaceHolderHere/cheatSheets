-- --- USE --- -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- === CONSTRAINTS === --
-- constraints for the values of a certain column which you can add upon table creation, or after table creation (with alter)
-- Syntax: ALTER TABLE [table] ADD CONSTRAINT [constraint name] [Constraint] ([column/s]);

-- === UNIQUE === --
-- a column cannot have 2 rows with the same value
-- example of adding the constraint to an existing table via alter:
ALTER TABLE employees
	ADD CONSTRAINT unique_email
    UNIQUE (email);
-- --------------------------------------------------------------------------------------------------------------------------
