USE sql_practice;

DROP TABLE IF EXISTS Enrollment; -- 仅删除旧的选课表

/* 多表连接 */

CREATE TABLE Enrollment
(
    student_id INT,
    course VARCHAR(30)
);

INSERT INTO Enrollment (student_id, course)
VALUES
    (1001, '数据库'),
    (1001, '编译原理'),
    (1002, '数据库');

-- SELECT * FROM Enrollment;

/*
-- 内连接 + 条件筛选：只保留匹配上的行
SELECT Student.name, Enrollment.course
FROM student
JOIN Enrollment
    ON student.id = Enrollment.student_id
WHERE course = '数据库'
ORDER BY student.id;

-- 左连接：保留左表的所有行
SELECT student.name, Enrollment.course
FROM student
LEFT JOIN Enrollment
    ON student.id = Enrollment.student_id
WHERE Enrollment.student_id IS NULL
ORDER BY student.id, Enrollment.course;

SELECT student.name, Enrollment.course
FROM student
LEFT JOIN Enrollment
    ON student.id = Enrollment.student_id
WHERE course IS NULL
ORDER BY student.id, Enrollment.course;

-- 找不同
SELECT student.name, Enrollment.course
FROM student
LEFT JOIN Enrollment
    ON student.id = Enrollment.student_id
    AND Enrollment.course = '数据库'
ORDER BY student.id;

SELECT student.name, Enrollment.course
FROM student
LEFT JOIN Enrollment
    ON student.id = Enrollment.student_id
WHERE Enrollment.course = '数据库'
ORDER BY student.id;
-- ON 决定怎样匹配，WHERE 决定连接后的那些行留下
*/

-- 统计每个学生有几条选课记录
SELECT Student.id, Student.name, COUNT(Enrollment.student_id) AS course_count
FROM Student
LEFT JOIN Enrollment
    ON Student.id = Enrollment.student_id
GROUP BY Student.id, Student.name
HAVING COUNT(Enrollment.student_id) >= 2
ORDER BY Student.id;





