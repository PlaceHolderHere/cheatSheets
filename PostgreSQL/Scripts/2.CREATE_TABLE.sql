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