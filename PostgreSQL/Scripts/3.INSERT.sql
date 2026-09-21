-- INSERT --
-- allows you to insert records into a table
-- inserting multiple rows at once is optional
-- General Syntax:
	-- INSERT INTO [table_name] ([col1], [col2],...,[col3]) VALUES ([val1], [val2],...,[val3]), ([val1]...);

-- Inserting one row
INSERT INTO students (first_name, last_name, grade_level, birthday) VALUES 
	('Jack', 'Brown', 12, DATE '2008-09-09');

-- Inserting multiple rows at once
INSERT INTO students (first_name, last_name, grade_level, birthday) VALUES 
	('Zach', 'Black', 11, DATE '2008-12-30'),
	('Jeff', 'James', 11, DATE '2009-02-24');
