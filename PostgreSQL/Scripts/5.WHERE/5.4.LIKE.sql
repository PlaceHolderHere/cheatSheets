-- LIKE --
-- looks for strings that have a certain substring within them
-- formatted as wildcards
	-- wildcards allow you to determine what the LIKE keyword is specifically meant to look for
	-- "%" -> means any number of any character
	-- "_" -> means one of any character
-- Syntax: [SELECT query] WHERE [col] LIKE [wildcard];
SELECT * FROM students WHERE first_name LIKE 'J%'; -- any name starting with J

-- EXAMPLES OF WILDCARDS --
-- a => substring for example
-- 'a%' -> starts with a
-- '%a' -> ends with a
-- '%a%' -> contains a
-- '_a' -> 1 placeholder character before a
-- '__a' -> 2 placeholder characters before a