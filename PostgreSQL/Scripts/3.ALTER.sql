-- ALTER --
-- ALlows you to change the structure of an already existing table
-- Documentation: https://www.postgresql.org/docs/current/sql-altertable.html
-- SYNTAX: ALTER TABLE [table_name] [ALTERATION];

-- ADDING A COLUMN
-- SYNTAX: ALTER TABLE [table] ADD COLUMN [column_name] [data types and constraint]; 
ALTER TABLE students ADD COLUMN gpa DECIMAL(3, 2);
ALTER TABLE students ADD COLUMN gender VARCHAR(5);

-- RENAMING A COLUMN --
-- SYNTAX: ALTER TABLE [table] RENAME [original column] TO [new col name];
ALTER TABLE students RENAME id TO student_id;

-- ALTERING A COLUMN'S DATA TYPE
-- SYNTAX: ALTER TABLE [table] ALTER [column] TYPE [new data type];
ALTER TABLE students ALTER gender TYPE VARCHAR(10);

-- DELETE A COLUMN --
-- SYNTAX: ALTER TABLE [table] ALTER [column] DROP DEFAULT;
ALTER TABLE students ALTER gender DROP DEFAULT;