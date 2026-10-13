-- INNER JOINS --
-- Inner joins require a row to have a matching column in both table1 and table 2 to be included
	-- if a row does not meet this requirement, it is excluded from the returning query
-- SYNTAX: SELECT [cols] FROM [table1] INNER JOIN [table2] ON [table1].[col] = [table2].[col];
SELECT * FROM students 
	INNER JOIN student_grades 
	ON students.student_id = student_grades.student_id;