-- === USE === -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- === SUBQUERY === --
-- A query inside of a query
-- the subquery has to return only one value (one column and one row)
-- Syntaxt: SELECT [column/s], ([subquery]) FROM [table];
SELECT *, (SELECT AVG(hourly_pay) FROM employees) FROM employees;
-- --------------------------------------------------------------------------------------------------------------------------