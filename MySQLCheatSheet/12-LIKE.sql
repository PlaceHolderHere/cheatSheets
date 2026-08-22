-- === USE === -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- === LIKE === --
-- Allows you to check for strings that have certain "characters" with wild cards
-- "%" => any number of characters
-- "_" => any single character
-- Syntax: SELECT * FROM [table] WHERE [column] LIKE [wildcard];
SELECT * FROM employees
	WHERE full_name
    LIKE "S%"; -- Selects anyway who's name starts with "S"
    
    
-- Example 2:
SELECT * FROM employees
	WHERE full_name 
    LIKE "_a%"; -- selects anyone with "a" as the 2nd letter in their name
-- --------------------------------------------------------------------------------------------------------------------------