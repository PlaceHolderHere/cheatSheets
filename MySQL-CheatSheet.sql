-- Create a Database --
-- CREATE DATABASE [db_name] 
-- CREATE DATABASE employees; 

-- Start Using the Database --
-- USE [db_name]
USE employees;

-- Creating a Table
-- CREATE TABLE [table_name] ([attribute name] [datatype],...);
CREATE TABLE businesses(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200),
    establish_date DATE,
    num_of_employees INT
);

CREATE TABLE employees(
	employee_id INT PRIMARY KEY,
    name VARCHAR(200),
    hourly_pay FLOAT,
    age INT,
    hire_date DATE,
    business_id INT,
    
    -- CONSTRAINT [constraint name] FOREIGN KEY ([col_name in current table]) REFERENCES [table]([column])
    CONSTRAINT fk_business_id FOREIGN KEY (business_id) REFERENCES businesses(id)
);