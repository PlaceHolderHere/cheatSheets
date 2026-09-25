-- INSERT --
-- allows you to insert records into a table
-- inserting multiple rows at once is optional
-- General Syntax:
	-- INSERT INTO [table_name] ([col1], [col2],...,[col3]) VALUES ([val1], [val2],...,[val3]), ([val1]...);

-- Inserting one row
INSERT INTO students (first_name, last_name, grade_level, birthday, gpa) VALUES 
    ('Jack', 'Brown', 12, DATE '2008-09-09', 3.85);

-- Inserting multiple rows at once
INSERT INTO students (first_name, last_name, grade_level, birthday, gpa) VALUES 
    ('Zach', 'Black', 11, DATE '2008-12-30', 3.20),
    ('Jeff', 'James', 11, DATE '2009-02-24', 2.95);

-- Sample Data
INSERT INTO students (first_name, last_name, grade_level, birthday, gpa) VALUES
  ('Ethan', 'Carter', 10, '2009-03-14', 3.42),
  ('Sophia', 'Rodriguez', 12, '2007-11-02', 3.91),
  ('Liam', 'Chen', 9, '2010-06-25', 3.15),
  ('Maya', 'Patel', 11, '2008-01-19', 3.78),
  ('Noah', 'Kim', 10, '2009-08-30', 2.88),
  ('Olivia', 'Walker', 12, '2007-04-12', 4.00),
  ('Lucas', 'Silva', 9, '2010-12-05', 3.05),
  ('Emma', 'Johnson', 11, '2008-09-22', 3.65),
  ('Aiden', 'Brooks', 10, '2009-05-17', 2.70),
  ('Zoe', 'Nguyen', 9, '2010-02-08', 3.50);