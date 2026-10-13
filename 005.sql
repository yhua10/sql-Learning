USE sql_practice;

SELECT id, name, age
FROM Student
WHERE age = 20
--
UNION
--
SELECT id, name, age
FROM Student
WHERE name LIKE '张%';


SELECT id, name, age
FROM Student
WHERE age = 20
--
UNION ALL
--
SELECT id, name, age
FROM Student
WHERE name LIKE '张%';


