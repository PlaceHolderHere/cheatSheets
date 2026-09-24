-- WHERE --
-- Only includes rows in a SELECT query that match a certain condition
-- Syntax: [SELECT query] WHERE [condition];
SELECT * FROM students WHERE grade_level = 11;

-- AND --
-- Requires both conditions to be true, for the WHERE query to return the row
SELECT * FROM students WHERE grade_level = 11 AND first_name = 'Zach';

-- OR --
-- Only one of two conditions has to be true for the WHERE query to return the row
SELECT * FROM students WHERE grade_level = 12 OR first_name = 'Zach';
