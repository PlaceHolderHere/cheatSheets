-- AGGREGATE FUNCTIONS --
-- Takes a set of rows as input, performs a specific function on a column/s in all of the rows, and returns a single value
-- Syntax: [FUNCTION]([column])
-- ex: COUNT(*) -> counts number of rows

-- COUNT --
-- counts the number of rows inputted
SELECT COUNT(*) FROM students; 
	-- This counts the number of students in the students table

-- AVG --
-- averages all of the values in a row in a single column
SELECT AVG(gpa) FROM students;

-- MAX --
-- finds the highest value among all the rows
SELECT MAX(gpa) FROM students;


-- MIN --
-- finds the lowest value among all the rows
SELECT MIN(gpa) FROM students;

-- SUM --
-- returns the sum of the values of a certain column in each row
SELECT SUM(gpa) FROM students;