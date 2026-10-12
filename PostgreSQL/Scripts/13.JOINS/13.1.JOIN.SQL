-- JOINS --
-- Joins allow you to combine rows from two or more tables based on a shared column between them (often represented via a foreign key)
-- JOIN defaults to an inner join, meaning it only includes rows from table1 if they have a corresponding row in table2
-- SYNTAX: SELECT [cols] FROM [table1] JOIN [table2] ON [table1].[col] = [table2].[col];
SELECT * FROM students 
	JOIN student_grades 
	ON students.student_id = student_grades.student_id;