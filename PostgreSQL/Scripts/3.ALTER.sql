-- ALTER --
-- ALlows you to change the structure of an already existing table
-- Documentation: https://www.postgresql.org/docs/current/sql-altertable.html
-- SYNTAX: ALTER TABLE [table_name] [ALTERATION];

-- ADDING A COLUMN
-- SYNTAX: ALTER TABLE [table] ADD COLUMN [column_name] [data types and constraint]; 
ALTER TABLE students ADD COLUMN gpa DECIMAL(3, 2);
ALTER TABLE students ADD COLUMN gender VARCHAR(5);

-- ADDING A CONSTRAINT TO A COLUMN
-- SYNTAX: ALTER TABLE [table] ADD CONSTRAINT [constraint name] [constraint];

ALTER TABLE students ADD CONSTRAINT min_grade_level CHECK(grade_level > 0);
	-- NOT NULL --
	-- SYNTAX: ALTER TABLE [table] ALTER COLUMN [column] SET NOT NULL;
	ALTER TABLE students ALTER COLUMN grade_level SET NOT NULL;

-- RENAMING A COLUMN --
-- SYNTAX: ALTER TABLE [table] RENAME [original column] TO [new col name];
ALTER TABLE students RENAME id TO student_id;

-- ALTERING A COLUMN'S DATA TYPE
-- SYNTAX: ALTER TABLE [table] ALTER [column] TYPE [new data type];
ALTER TABLE students ALTER gender TYPE VARCHAR(10);

-- DELETE A COLUMN --
-- SYNTAX: ALTER TABLE [table] ALTER [column] DROP DEFAULT;
ALTER TABLE students DROP COLUMN gender;