DROP DATABASE IF EXISTS sql_practice;
CREATE DATABASE sql_practice CHARACTER SET utf8mb4;
USE sql_practice;

/* 单表 */

CREATE TABLE Student
(
    id   INT PRIMARY KEY, -- 主键，唯一标识符
    name VARCHAR(20),
    age  INT
);

INSERT INTO Student (id, name, age)
VALUES (1001, '张三', 20),
       (1002, '李四', 19),
       (1003, '王五', 21),
       (1004, 'i''ma', 101),
       (0095, '张三三', 20),
       (2004, '你好', NULL);

/*
SELECT age, name, id
FROM Student;

SELECT name, age
FROM Student
WHERE age > 19; -- 选择行

SELECT name
FROM Student
WHERE name = 'i''ma';

SELECT name, age
FROM Student
WHERE name != 'i''ma' AND age > 19;

SELECT name, age
FROM Student
WHERE age < 20 OR age > 100;

SELECT id, age
FROM Student
WHERE age >= 20
ORDER BY age DESC, id;

SELECT name
FROM Student
WHERE name LIKE '张%'; -- 匹配任意东西

SELECT name
FROM Student
WHERE name LIKE '张_'; -- 匹配一个字符

SELECT id, name
FROM Student
WHERE name IN ('张__', '%五'); -- 这个不支持

SELECT id, name
FROM Student
WHERE name IN ('张三', '王五');

SELECT name, age
FROM Student
WHERE name LIKE '张%' AND age BETWEEN 19 AND 21;

SELECT DISTINCT age, name
FROM Student
ORDER BY age;

SELECT DISTINCT age
FROM Student
WHERE age < 30
ORDER BY age DESC;

SELECT COUNT(*) AS zhang_count
FROM Student
WHERE name LIKE '张%';

SELECT AVG(age) AS avg_age,
       MAX(age) AS max_age,
       COUNT(*) as st_count
FROM Student
WHERE age < 30;

SELECT COUNT(id) AS zhang_count, -- 写 * 也一样
       AVG(age) AS avg_age
FROM Student
WHERE name LIKE '张%';

SELECT age, COUNT(*) AS student_count -- 结果有两列
FROM Student
GROUP BY age
ORDER BY age;

SELECT age, COUNT(*) AS student_count -- Att
FROM Student
WHERE age < 30
GROUP BY age
ORDER BY age DESC;

SELECT AVG(age), COUNT(*) AS student_count -- 组内平均年龄
FROM Student
WHERE age < 30
GROUP BY age
HAVING COUNT(*) >= 2
ORDER BY age DESC;

SELECT age, COUNT(*)
FROM Student
WHERE id > 100
GROUP BY age
HAVING COUNT(*) >= 2
ORDER BY age;

SELECT id, name
FROM Student
WHERE age IS NULL OR age < 30;
*/

SELECT id, name
FROM Student
WHERE (name LIKE '张%' OR age < 20) AND id > 100;


