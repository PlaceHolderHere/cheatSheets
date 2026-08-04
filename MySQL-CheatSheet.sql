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

