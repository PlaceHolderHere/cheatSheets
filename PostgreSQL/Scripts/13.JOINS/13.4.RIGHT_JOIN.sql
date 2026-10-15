-- RIGHT JOINS --
-- Right joins takes all rows from table2, and combines them with matching rows from table1
-- for table2 rows without a matching row from table1, the values for table1 columns are NULL
-- SYNTAX: SELECT [cols] FROM [table1] RIGHT JOIN [table2] ON [table1].[col] = [table2].[col];
SELECT * FROM students 
	RIGHT JOIN student_grades 
	ON students.student_id = student_grades.student_id;