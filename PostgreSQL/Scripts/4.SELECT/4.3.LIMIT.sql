-- LIMITS --
-- Allow you to limit the number of rows retrieved from a SELECT query
-- Selects the first n number of rows, based on the select query
-- Syntax: [SELECT Query] LIMIT [no. of rows];

SELECT * FROM students LIMIT 2;

-- OFFSET --
-- Adjusts the starting point of LIMIT by m digits
-- Syntax: [SELECT Query] OFFSET [m] LIMIT [n];
SELECT * FROM students OFFSET 1 LIMIT 2;