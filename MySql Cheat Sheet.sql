-/* === Creates a Database === */
-- CREATE DATABASE business;

/* === Choose Database to USE === */
USE students; 
/* ======================================= */

/* === Creates a Table in selected database === */
-- CREATE TABLE employees(
-- 	employee_id INT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     hourly_pay DECIMAL(10, 2),
--     hire_date date,
--     email VARCHAR(200)
-- );
/* ============================================ */

/*  === Add, Change and Delete Columns in an existing table === */
-- ALTER TABLE employees ADD COLUMN hire_date DATE;
-- ALTER TABLE employees MODIFY email VARCHAR(100) AFTER hourly_pay;
-- ALTER TABLE employees DROP COLUMN hire_date;
/* ============================================ */

/* === Adding row/s into the employees table === */
-- INSERT INTO employees VALUES (1, 'Person1', 'A', 20.75, '2020-04-22'),
-- 		(2, 'Person2', 'B', 15.25, '2022-10-25'),
-- 		(3, 'Person3', 'C', 17.95, '2021-08-09'),
-- 		(4, 'Person4', 'D', 12.50, '2023-01-20'),
--         (5, 'Person5', 'E', 22.75, '2019-03-26'); 
-- INSERT INTO employees (employee_id, first_name) VALUES (6, 'Person0');
/* ============================================ */

/* === Select All Columns From Employees: === */
-- SELECT * FROM employees
/* ============================================ */

/* === Select Specific Columns Based on Name === */
-- SELECT employee_id, hourly_pay FROM employees;
/* ============================================ */

/* === Select From employees Specific Row with specific value === */
-- SELECT * FROM employees WHERE employee_id = 4;
-- SELECT * FROM employees WHERE first_name = 'Person2';
-- SELECT * FROM employees WHERE employee_id != 1;
-- SELECT * FROM employees WHERE last_name IS NULL;
-- SELECT employee_id, first_name, hourly_pay FROM employees WHERE hourly_pay < 20;
/* ============================================ */

/* === Selects stuff with certain characters in it === */
-- SELECT * FROM employees WHERE name LIKE 'a%'; -- Values start with "a" 
-- SELECT * FROM employees WHERE name LIKE '%a'; -- Values ends with "a"
-- SELECT * FROM employees WHERE name LIKE '%a%'; -- Values with "a" anywehre
-- SELECT * FROM employees WHERE name LIKE '_a%'; -- "a" in 2nd position
-- SELECT * FROM employees WHERE name LIKE 'a_%'; -- Start with "a" & 2/more characters in length
-- SELECT * FROM employees WHERE name LIKE 'a__%'; -- Start with "a" & 3/more characters in length
-- SELECT * FROM employees WHERE name LIKE 'a%o'; -- Starts with "a" & ends with "o"
/* ============================================ */

/* === Gets stuff and orders them === */
-- SELECT * FROM employees ORDER BY employee_id; -- Orders by Ascending
-- SELECT * FROM employees ORDER BY employee_id DESC; -- Orders by Descending
-- SELECT * FROM employees ORDER BY employee_id, hourly_pay; -- Orders by employee_id THEN hourly_pay for duplicate employee_id's
-- SELECT * FROM employees ORDER BY employee_id ASC, hourly_pay DESC; -- Orders by employee_id ASCENDING THEN hourly_pay DESCENDING	
/* ============================================ */

/* === Changing Data in Specific cells === */
-- UPDATE  employees SET hourly_pay = 20.75 WHERE employee_id = 1;
-- DELETE FROM employees WHERE employee_id = 6;
-- UPDATE employees SET hire_date = (current_date()) WHERE employee_id = 4;
/* ============================================ */

/* === Adds Unique Constraint To Column(There cannot be 2 values that are the same) === */
-- ALTER TABLE employees ADD CONSTRAINT UNIQUE(employee_id);
/* === Testing If Constraint Worked: === */
-- INSERT INTO employees VALUES (5, 'Person6', 'F', 10.50, '2023-01-23');
/* ============================================ */

/* === Adding a not Null Constraint to the table === */
/* === Not Null Constraint means that the field can't be null: === */
-- CREATE TABLE employees(
-- 	employee_id INT NOT NULL, 
--     first_ VARCHAR(50),
--     last_name VARCHAR(50),
--     hourly_pay DECIMAL(10, 2),
--     hire_date date,
--     email VARCHAR(200)
-- );
/* ============================================ */

/* === Adding Not Null to existing table === */
-- ALTER TABLE employees MODIFY employee_id INT NOT NULL;
/* === Testing Null Constraint === */
-- INSERT INTO employees VALUES (NULL, 'Person6', 'F', 12.95, '2022-12-15');
/* ============================================ */

SELECT * FROM students
