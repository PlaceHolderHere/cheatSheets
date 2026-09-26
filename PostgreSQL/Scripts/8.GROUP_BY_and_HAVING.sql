-- GROUP BY --
-- Divides rows into groups based on a shared column and applies an aggregate function to each group
-- SYNTAX: SELECT [col1], [aggregate_function]([input]) FROM [table] GROUP BY [col1];
SELECT grade_level, COUNT(*) FROM students GROUP BY grade_level;

-- HAVING --
-- Used with GROUP BY to filter for groups that meet certain conditions based on aggregate functions
-- SYNTAX: SELECT [col1], [aggregate_function]([input]) FROM [table]
	-- GROUP BY [col1] HAVING [aggregate_function]([input]) [condition]; 
SELECT grade_level, AVG(gpa)
	FROM students GROUP BY grade_level HAVING AVG(gpa) > 3;