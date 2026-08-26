-- === USE === -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- === SUBQUERY === --
-- A query inside of a query
-- the subquery returns row/s, that you can then use in the main query such as for WHERE statements
-- Syntaxt: ([subquery])
SELECT *, (SELECT AVG(hourly_pay) FROM employees) FROM employees;
-- --------------------------------------------------------------------------------------------------------------------------