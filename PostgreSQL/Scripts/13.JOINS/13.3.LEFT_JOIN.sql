-- LEFT JOINS --
-- Left joins takes all rows from table1, and combines them with matching rows from table2
-- for table1 rows without a matching row from table2, the values for table2 columns are NULL
-- SYNTAX: SELECT [cols] FROM [table1] LEFT JOIN [table2] ON [table1].[col] = [table2].[col];
SELECT * FROM students 
	LEFT JOIN student_grades 
	ON students.student_id = student_grades.student_id;