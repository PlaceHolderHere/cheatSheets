-- === USE === -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- === CONSTRAINTS === --
-- constraints for the values of a certain column which you can add upon table creation, or after table creation (with alter)
-- Syntax: ALTER TABLE [table] ADD CONSTRAINT [constraint name] [Constraint] ([column/s]);
-- Example of adding a constraint when creating a table: CONSTRAINT [constraint name] [constraint] ([column/s])
CREATE TABLE test(
	test_id INT,
    test_attribute int,
    
    CONSTRAINT primary_key PRIMARY KEY (test_id)
);

-- LIST ALL AVAILABLE CONSTRAINTS:
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME = 'employees'; -- replace employees with any table name

-- === DROP CONSTRAINT === --
-- Drop/Delete a constraint
-- Syntax: ALTER TABLE [table] DROP CONSTRAINT [constraint_name]
ALTER TABLE employees
	DROP CONSTRAINT fk_business_id;

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
-- --------------------------------------------------------------------------------------------------------------------------

-- === PRIMARY KEY === --
-- Combines UNIQUE and NOT NULL for a unique identifier for each row of a table
ALTER TABLE employees
	ADD CONSTRAINT primary_key
    PRIMARY KEY (employee_id);
-- --------------------------------------------------------------------------------------------------------------------------

-- === FOREIGN KEY === --
-- You can store the primary key of another table for reference
-- Used in combination with JOINS
ALTER TABLE employees
	ADD CONSTRAINT foreign_key
    FOREIGN KEY (business_id)
    REFERENCES businesses(id);
-- --------------------------------------------------------------------------------------------------------------------------

-- === DEFAULT === --
-- If a value is not given for a column when inserting a row, use this default value
ALTER TABLE businesses
	ALTER num_of_employees
    SET DEFAULT 0;
-- --------------------------------------------------------------------------------------------------------------------------

-- === AUTO_INCREMENT === --
-- generates a default value, starting at 1 and incrementing for every new record added
-- typically used for PRIMARY KEY
-- Setting a column to auto increment:
ALTER TABLE employees
	MODIFY employee_id
    INT AUTO_INCREMENT;
    
-- SETTING STARTING VALUE OF AUTO INCREMENT --
ALTER TABLE employees AUTO_INCREMENT = 7;

-- SEE THE CURRENT VALUE OF AUTO INCREMENT --
-- Syntax: SELECT AUTO_INCREMENT FROM information_schema.tables WHERE table_schema = [db_name] AND table_name = [table_name];
SELECT AUTO_INCREMENT 
FROM information_schema.tables 
WHERE table_schema = 'employees' 
  AND table_name = 'employees';
-- --------------------------------------------------------------------------------------------------------------------------