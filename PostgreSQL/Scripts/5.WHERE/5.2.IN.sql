-- IN --
-- used in a WHERE clause to check if a given column/value is in a list and returns a boolean
-- Syntax; [SELECT query] WHERE [col/value] IN (['value1'], ['val2'],...);
SELECT * FROM students WHERE last_name IN ('Brown', 'James');