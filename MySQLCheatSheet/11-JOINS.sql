-- --- USE --- -- 
-- Selects a database to use
USE employees;

-- --------------------------------------------------------------------------------------------------------------------------
-- === JOINS === --
-- Joins allow you to combine two tables based on a shared column (usually Foreign Keys and Primary Keys)
-- Syntax: SELECT * FROM [table1] [Join] [table 2] ON [table1].[shared_column] = [table2].[shared_column];
-- --------------------------------------------------------------------------------------------------------------------------

-- Inserting some data as an example:
INSERT INTO employees (full_name, email) VALUES ('Person7', '7@email.com'), ('Person8', '8@email.com');

-- === INNER JOIN === --
-- Inner Joins only returns rows that have matching in the shared_column in both tables
-- Example: This combines employees and businesses tables so that you can see information about the business an employee works at
SELECT * FROM employees
	INNER JOIN businesses
    ON employees.business_id = businesses.id;
-- --------------------------------------------------------------------------------------------------------------------------

-- === LEFT JOIN === --
-- Left Joins only returns all rows from table1, and rows from table2 that have matching in the shared_column in both tables
-- For the rows from table1 without a matching column in table2, the columns from table2 are NULL
SELECT * FROM employees
	LEFT JOIN businesses
    ON employees.business_id = businesses.id;
-- --------------------------------------------------------------------------------------------------------------------------

-- === RIGHT JOIN === --
-- Right Joins only returns all rows from table1, and rows from table2 that have matching in the shared_column in both tables
-- For the rows from table2 without a matching column in table1, the columns from table1 are NULL
SELECT * FROM employees
	RIGHT JOIN businesses
    ON employees.business_id = businesses.id;
-- --------------------------------------------------------------------------------------------------------------------------