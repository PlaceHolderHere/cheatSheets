-- Create a Database --
-- CREATE DATABASE [db_name] 
-- CREATE DATABASE employees; 

-- Start Using the Database --
-- USE [db_name]
USE employees;

-- Creating a Table
-- CREATE TABLE [table_name] ([attribute name] [datatype],...);
CREATE TABLE businesses(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200),
    establish_date DATE,
    num_of_employees INT
);

CREATE TABLE employee_info(
	employee_id INT PRIMARY KEY,
    name VARCHAR(200),
    hourly_pay FLOAT,
    age INT,
    hire_date DATE,
    business_id INT,
    
    -- CONSTRAINT [constraint name] FOREIGN KEY ([col_name in current table]) REFERENCES [table]([column])
    CONSTRAINT fk_business_id FOREIGN KEY (business_id) REFERENCES businesses(id)
);
-- --------------------------------------------------------------------------------------------------------------------------

-- ALTER --
-- Allows you to change tables after they have been created

-- RENAMING A TABLE
ALTER TABLE employee_info RENAME TO employees;

-- ADD
ALTER TABLE employees ADD COLUMN email VARCHAR(200); -- Add a column
ALTER TABLE employees ADD CONSTRAINT age_check CHECK (hourly_pay >= 7.25); -- Add a constraint to a column

-- RENAME a column
ALTER TABLE employees RENAME COLUMN name TO full_name; 

-- MODIFY
ALTER TABLE employees MODIFY name VARCHAR(256); -- Change a column's datatype and/or constraint/s
ALTER TABLE employees MODIFY business_id INT AFTER employee_id; -- Change a column and move it

-- DROP 
ALTER TABLE employees DROP COLUMN age; -- Deletes a column in the database
-- --------------------------------------------------------------------------------------------------------------------------

-- INSERT --
-- Insert data into tables
INSERT INTO businesses (id, name, establish_date, num_of_employees) VALUES (1, "Generic Fast Food", '2024-08-08', 20); -- Inserting one Value
INSERT INTO businesses (id, name, establish_date, num_of_employees) VALUES -- Inserting Multiple Values at Once
	(2, "Retail Store", '2023-02-15', 25),
    (3, "Grocery Store", '2022-05-21', 35),
    (4, "Clothing Store", '2025-12-08', 12); 
