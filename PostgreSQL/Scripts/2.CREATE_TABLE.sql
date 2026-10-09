-- General Syntax:
-- CREATE TABLE [table name] (
	-- [column name] [DATA TYPE],
	-- [col name] [DATA TYPE],...
--);
-- Postgresql datatypes: https://www.postgresql.org/docs/current/datatype.html

-- CONSTRAINTS
	-- Specific requirements/checks that restrict allowed values in a column
	-- Constraints Documentation: https://www.postgresql.org/docs/current/ddl-constraints.html

CREATE TABLE students(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	grade_level SMALLINT,
	birthday DATE
);
-- ---------------------------------------------------------------------------------

-- CREATING A TABLE WITH A FOREIGN KEY --
-- Option 1: column level syntax, one-line 
CREATE TABLE student_grades(
	id SERIAL PRIMARY KEY,
	subject VARCHAR(20) NOT NULL,
	grade DECIMAL(5, 2),
	student_id INT REFERENCES students(student_id) ON DELETE CASCADE
);

-- Option 2: Separate Constraint
CREATE TABLE student_grades(
    id SERIAL PRIMARY KEY,
    subject VARCHAR(20) NOT NULL,
    grade DECIMAL(5, 2),
    student_id INT,
    CONSTRAINT fk_students 
        FOREIGN KEY (student_id) 
        REFERENCES students(student_id) 
        ON DELETE CASCADE
);
-- ---------------------------------------------------------------------------------