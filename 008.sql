USE sql_practice;

/* VIEW */

CREATE OR REPLACE VIEW AdultStudent AS
SELECT id, name, age
FROM Student
WHERE age >= 18;

SELECT *
FROM AdultStudent;

SELECT name, age
FROM AdultStudent
WHERE age < 21;

--
CREATE OR REPLACE VIEW AdultStudent AS
SELECT id, name, age
FROM Student
WHERE age >= 18
WITH CHECK OPTION;

/*
UPDATE AdultStudent
SET age = 17;
*/



