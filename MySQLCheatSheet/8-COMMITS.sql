-- --- USE --- -- 
-- Selects a database to use
USE employees;

-- --- AUTOCOMMIT --- -- 
-- By Default, AUTOCOMMIT is set to active, meaning MySQL automatically saves changes you make to the database
-- Disabling AUTOCOMMIT:
SET AUTOCOMMIT = OFF;
-- --------------------------------------------------------------------------------------------------------------------------
   
-- --- COMMIT --- --
-- Creates a "checkpoint" or save state of your database
-- run COMMIT to finalize changes made to the database
COMMIT;
-- --------------------------------------------------------------------------------------------------------------------------

-- --- ROLLBACK --- --
-- Undo changes you made, and go back to your most recent commit
ROLLBACK;

-- Example of a Change to your databsae: --
DELETE FROM employees;