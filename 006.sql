USE sql_practice;

-- 修改
/*
UPDATE Student
SET age = 22
WHERE id = 1004;

SELECT *
FROM Student
WHERE id = 1004;

UPDATE Student
SET age = 101
WHERE name = 'i''ma';

SELECT *
FROM Student
WHERE id = 1004;

-- 删除

INSERT INTO Student (id, name, age)
VALUES (9999, '临时学生', 18);

SELECT *
FROM Student
WHERE id = 9999;

DELETE FROM Student
WHERE id = 9999;

SELECT *
FROM Student
WHERE id = 9999;
*/

-- 改表

-- ALTER TABLE Student
-- DROP COLUMN email;

-- 增加一列
ALTER TABLE Student
ADD COLUMN email VARCHAR(100);

-- 查看表结构
DESCRIBE Student;

UPDATE Student
SET email = 'zhangsan@example.com'
WHERE id = 1001;

SELECT *
FROM STudent;



