-- --- USE --- -- 
-- Selects a database to use
USE employees;

-- --- INSERT --- -- 
-- Insert data into tables
INSERT INTO businesses (id, name, establish_date, num_of_employees) VALUES (1, "Generic Fast Food", '2024-08-08', 20); -- Inserting one record

INSERT INTO businesses (id, name, establish_date, num_of_employees) VALUES -- Inserting Multiple Values at Once
	(2, "Retail Store", '2023-02-15', 25),
    (3, "Grocery Store", '2022-05-21', 35),
    (4, "Clothing Store", '2025-12-08', 12); 
-- --------------------------------------------------------------------------------------------------------------------------

-- 2nd example:
INSERT INTO employees (employee_id, full_name) VALUES (1, 'Person1'); -- insert one record
INSERT INTO employees (employee_id, business_id, full_name, hourly_pay, hire_date, email) VALUES (2, 1, 'Person2', 9.75, '2020-04-22', '2@email.com'),
		(3, 3, 'Person3', 12.75, '2020-04-22', '3@email.com'),
		(4, 3, 'Person4', 13.75, '2020-04-22', '4@email.com'),
		(5, 1, 'Person5', 8.75, '2020-04-22', '5@email.com'),
        (6, 4, 'Person6', 15.75, '2020-04-22', '6@email.com'); 
-- --------------------------------------------------------------------------------------------------------------------------
