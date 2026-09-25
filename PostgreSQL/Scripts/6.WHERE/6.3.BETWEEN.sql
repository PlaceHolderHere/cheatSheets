-- BETWEEN --
-- Checks if a value is between 2 ranges and returns a boolean
-- Used in WHERE clauses to filter for values in certain ranges
-- includes values that are equal to the lowest and higher part of the range
-- SYNTAX: [SELECT query] WHERE [col] BETWEEN [low_val] AND [high_val];
SELECT * FROM students WHERE birthday BETWEEN '2008-01-01' AND '2009-01-01';