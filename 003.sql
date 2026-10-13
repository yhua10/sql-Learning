USE sql_practice;

/* 子查询 */

-- 查询选修了数据库的学生学号和姓名
-- 分两步
SELECT id, name
FROM Student
WHERE id IN (
    SELECT student_id
    FROM Enrollment
    WHERE course = '数据库'
);

-- 查询选修了编译原理的学生学号和姓名
SELECT id, name
FROM Student
WHERE id IN (
    SELECT Enrollment.student_id
    FROM Enrollment
    WHERE course = '编译原理'
);

-- 查询年龄高于所有学生平均年龄的学生
SELECT id, name, age
FROM Student
WHERE age > (
    SELECT AVG(age)
    FROM Student
);

-- 找出年龄最大的学生
SELECT id, name, age
FROM Student
WHERE age = (
    SELECT MAX(age)
    FROM Student
);

-- 查询至少有一条选课记录的学生
SELECT Student.id, Student.name
FROM Student
WHERE EXISTS( -- 只关心有没有行
    SELECT 1
    FROM Enrollment
    WHERE Enrollment.student_id = Student.id
);

-- 统计每名学生选了几门课
SELECT Student.id, Student.name,
       (
            SELECT COUNT(*)
            FROM Enrollment
            WHERE Enrollment.student_id = STudent.id
       ) AS course_count
FROM Student;

SELECT student_id,
       (
            SELECT name
            FROM Student
            WHERE Enrollment.student_id = STudent.id
       ) AS name,
       COUNT(*) AS course_count
FROM Enrollment
GROUP BY Enrollment.student_id;

-- 查询没有选编译原理的学生
SELECT Student.id, Student.name
FROM Student
WHERE NOT EXISTS(
    SELECT 1
    FROM Enrollment
    WHERE Enrollment.student_id = Student.id AND Enrollment.course = '编译原理'
);




