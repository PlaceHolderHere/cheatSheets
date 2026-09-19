-- General Syntax:
-- CREATE TABLE [table name] (
	-- [column name] [DATA TYPE],
	-- [col name] [DATA TYPE],...
--);
-- Postgresql datatypes: https://www.postgresql.org/docs/current/datatype.html

CREATE TABLE students(
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	birthday DATE
);