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

-- Sample Data
INSERT INTO students (first_name, last_name, grade_level, birthday) VALUES
  ('Ethan', 'Carter', 10, '2009-03-14'),
  ('Sophia', 'Rodriguez', 12, '2007-11-02'),
  ('Liam', 'Chen', 9, '2010-06-25'),
  ('Maya', 'Patel', 11, '2008-01-19'),
  ('Noah', 'Kim', 10, '2009-08-30'),
  ('Olivia', 'Walker', 12, '2007-04-12'),
  ('Lucas', 'Silva', 9, '2010-12-05'),
  ('Emma', 'Johnson', 11, '2008-09-22'),
  ('Aiden', 'Brooks', 10, '2009-05-17'),
  ('Zoe', 'Nguyen', 9, '2010-02-08');