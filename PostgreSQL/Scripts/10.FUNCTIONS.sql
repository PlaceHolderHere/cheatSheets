-- FUNCTIONS --
-- Functions take an input, perform a certain set of instructions/operations and return an output
-- List of Functions: https://www.postgresql.org/docs/current/functions.html
-- -----------------------------------------------------------------------------------------------------

-- COALESCE --
-- Returns the first non-null value from a list of values that are all the same type
-- Used to replace Null values in a query
-- SYNTAX: COALESCE([value1], [value2],..., [valueN]);
SELECT student_id, COALESCE(gpa, 0) FROM students;

	-- To replace non-string columns with a string, you have to cast the non-string column as a string
	SELECT student_id, COALESCE(gpa::text, 'No Grade Given') FROM students;
-- -----------------------------------------------------------------------------------------------------

-- NULL IF --
-- If value1 == value2, then NULLIF returns NULL, else it returns value1
-- example: catching division by 0 errors
-- SYNTAX: NULLIF([value1], [value2])
SELECT NULLIF(10, 1); -- Returns 10
SELECT NULLIF(10, 10); -- Returns NULL
-- Handling division by 0 by returning NULL
-- [num/col] / NULLIF([col/num], 0);
SELECT 10 / NULLIF(0, 0);
-- -----------------------------------------------------------------------------------------------------

-- NOW --
-- Gives you a timestamp
SELECT NOW(); -- timestamp (date + time)
SELECT NOW()::DATE; -- date only
SELECT NOW()::TIME; -- time only

	-- INTERVAL --
	-- Allow you to adjust the timestamp (move it forward or backward in time)
	-- SYNTAXT: NOW() [+/-] INTERVAL [amount of time];
	SELECT NOW() - INTERVAL '1 YEARS';
	SELECT NOW() + INTERVAL '1 MONTHS';
	SELECT NOW() - INTERVAL '1 DAYS';
	SELECT NOW() + INTERVAL '1 HOURS';
	SELECT NOW() - INTERVAL '1 MINUTES';
	SELECT NOW() - INTERVAL '1 SECONDS';
	SELECT NOW() - INTERVAL '1 MILLISECONDS';
-- -----------------------------------------------------------------------------------------------------
