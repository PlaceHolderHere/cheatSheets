-- INSERT --
-- allows you to insert records into a table
-- inserting multiple rows at once is optional
-- General Syntax:
	-- INSERT INTO [table_name] ([col1], [col2],...,[col3]) VALUES ([val1], [val2],...,[val3]), ([val1]...);

-- Inserting one row
INSERT INTO students (id, first_name, last_name, birthday) VALUES 
	(1, 'Jack', 'Brown', DATE '2008-09-09');

-- Inserting multiple rows at once
INSERT INTO students (id, first_name, last_name, birthday) VALUES 
	(2, 'Zach', 'Black', DATE '2008-12-30'),
	(3, 'Jeff', 'James', DATE '2009-02-24');
