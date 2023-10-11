CREATE TABLE IF NOT EXISTS student(
		id INT auto_increment PRIMARY KEY COMMENT '主键ID',
		name_ VARCHAR(10) COMMENT '姓名',
		no_ VARCHAR(10) COMMENT '学号'
) COMMENT '学生表';
INSERT INTO student VALUES (null, '戴维', '2000100101'), (null, '谢逊', '2000100102'), (null, '天正', '2000100103'), (null, '一笑', '2000100104');

CREATE TABLE IF NOT EXISTS course(
		id INT auto_increment PRIMARY KEY COMMENT '主键ID',
		name_ VARCHAR(10) COMMENT '课程名称'
) COMMENT '课程表';
INSERT INTO course VALUES (null, 'java'), (null, 'php'), (null, 'mysql'), (null, 'hadoop');

CREATE TABLE IF NOT EXISTS student_course(
		id INT auto_increment COMMENT '主键' PRIMARY KEY,
		studentid INT NOT NULL COMMENT '学生ID',
		courseid INT NOT NULL COMMENT '课程ID',
		CONSTRAINT fk_courseid FOREIGN KEY (courseid) REFERENCES course (id),
		CONSTRAINT fk_studentid FOREIGN KEY (studentid) REFERENCES student (id)
) COMMENT '学生课程中间表';
INSERT INTO student_course VALUES (null,1,1),(null,1,2),(null,1,3),(null,2,2),(null,2,3),(null,3,4);

SELECT emp.name_ , student.name_ FROM emp , student WHERE emp.id = student.id;

DROP TABLE student;
