-- --- USE --- -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- === INDEX === --
-- Make searching based on a column faster via a B-Tree Data structure
-- However, writes to the database become slower

-- SHOW INDEXES --
-- Show the indexes that currently exist for a table
-- Syntax: SHOW INDEXES FROM [table];
SHOW INDEXES FROM employees;

-- CREATE AN INDEX --
-- Syntax: CREATE INDEX [index name] ON [tables]([column]);
-- Example: Creating an index to search by hourly pay faster
CREATE INDEX pay_index
	ON employees(hourly_pay);
-- --------------------------------------------------------------------------------------------------------------------------