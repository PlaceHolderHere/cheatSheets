-- UPDATE --
-- Allows you to modify already existing data and rows within a table
-- SYNTAX: UPDATE [table] SET [column] = [new value] WHERE [condition];
	-- condition is optional, but recommended 

-- Example with a condition
UPDATE students SET gpa = 3.7 WHERE student_id = 28;

-- Example of setting value to NULL
UPDATE students SET gpa = NULL WHERE student_id = 22;

-- Example with no condition that updates all records
-- DANGEROUS, DO NOT RECOMMEND
UPDATE students SET gpa = 0;
