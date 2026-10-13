USE sql_practice;

DROP TABLE IF EXISTS Course;

/* 相关子查询 */

CREATE TABLE Course (
    course VARCHAR(30) PRIMARY KEY
);

INSERT INTO Course(course)
VALUES ('数据库'), ('编译原理'), ('操作系统');

-- 1001 没选的课程清单
SELECT Course.course
FROM Course
WHERE NOT EXISTS(
    SELECT 1
    FROM Enrollment
    WHERE Enrollment.student_id = 1001 AND Enrollment.course = Course.course
);

INSERT INTO Enrollment (student_id, course)
VALUES (1001, '操作系统');

-- 找到选修了全部课程的学生
SELECT id, name
FROM Student AS s
WHERE NOT EXISTS(
    SELECT 1
    FROM Course AS c
    WHERE NOT EXISTS(
        SELECT 1
        FROM Enrollment AS e
        WHERE e.student_id = s.id AND e.course = c.course
    )
);




