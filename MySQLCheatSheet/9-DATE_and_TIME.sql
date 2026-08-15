-- --- USE --- -- 
-- Selects a database to use
USE employees;

-- --- Creating a sample table for demonstration --- -- 
CREATE TABLE sample_time(
	sample_date DATE, -- Stores a date as a string: "YYYY-MM-DD"
    sample_time TIME, -- Stores a time as a string: 'hh:mm:ss' or 'hhh:mm:ss'
    sample_date_time DATETIME -- Stores both a date and time as a string: 'YYYY-MM-DD hh:mm:ss'
);

-- --- TIME() and DATE() functions --- --
-- CURRENT_DATE() - returns the date the function is called
-- CURRENT_TIME() - returns the time the function is called
-- NOW() - returns date and time at the moment the function is called
INSERT INTO sample_time VALUES(CURRENT_DATE(), CURRENT_TIME(), NOW());

-- You can do basic operations with the function outputs
-- Example: Adding 1 to CURRENT_DATE() will show the date for "Tomorrow"
INSERT INTO sample_time VALUES(CURRENT_DATE() + 1, CURRENT_TIME(), NOW());


-- --------------------------------------------------------------------------------------------------------------------------
