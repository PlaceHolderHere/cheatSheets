-- === USE === -- 
-- Selects a database to use
USE employees;
-- --------------------------------------------------------------------------------------------------------------------------

-- === CASE === --
-- A list of conditions that each have a specific return value
-- returns the value of the first condition to be true
-- Syntax: CASE WHEN [condition1] THEN [value1] WHEN [condition2] THEN [value2]...ELSE [default_value] END;
SELECT employee_id, full_name, hourly_pay, 
	CASE 
		WHEN hourly_pay >= 15 THEN "HIGH"
		WHEN hourly_pay >= 10 THEN "MID"
        WHEN hourly_pay < 10 THEN "LOW"
        ELSE "UNKNOWN"
	END AS "Income Bracket"
	FROM employees;
-- --------------------------------------------------------------------------------------------------------------------------