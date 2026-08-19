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

-- === NOT NULL === --
-- a column cannot be NULL, a value must be provided
ALTER TABLE employees
	MODIFY email varchar(200) NOT NULL;
-- --------------------------------------------------------------------------------------------------------------------------

-- === CHECK === --
-- Values in this column must meet a certain condition
ALTER TABLE employees
	ADD CONSTRAINT minimum_wage
    CHECK (hourly_pay >= 8.5);