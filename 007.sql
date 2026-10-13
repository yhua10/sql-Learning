USE sql_practice;

DROP TABLE IF EXISTS EnrollmentCheck;
DROP TABLE IF EXISTS StudentCheck;

CREATE TABLE StudentCheck (
    id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 0 AND age <= 150)
);

INSERT INTO StudentCheck (id, name, email, age)
VALUES (1, '张三', 'zhangsan@example.com', 20);

/*
INSERT INTO StudentCheck (id, name, email, age)
VALUES (2, '李四', 'lisi@example.com', -1);
*/

CREATE TABLE EnrollmentCheck (
    student_id INT NOT NULL,
    course VARCHAR(30),
    -- EnrollmentCheck.student_id 的每个值，都必须出现在 StudentCheck.id 中
    FOREIGN KEY (student_id) REFERENCES StudentCheck(id)
);

-- 可以：学生 1 存在
INSERT INTO EnrollmentCheck (student_id, course)
VALUES (1, '数据库');

/*
INSERT INTO EnrollmentCheck (student_id, course)
VALUES (2, '数据库');
*/






