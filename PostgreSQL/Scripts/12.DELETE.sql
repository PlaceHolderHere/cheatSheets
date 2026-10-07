-- DELETE -- 
-- Delete row/s from table, optionally with a query.
-- SYNTAX: UPDATE FROM [table_name];
-- WITH A CONDITION: UPDATE FROM [table_name] WHERE [condition];

-- Deleting Based on a Condition --
DELETE FROM students WHERE student_id = 22;

-- Deleting Everything in a table --
DELETE FROM students;