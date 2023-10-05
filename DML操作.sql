# 引用ddd的数据库
use dddd;

# 若果没有emplot表格就创建 
create table if not exists emplot(
id int comment'编号',
workno varchar(10) comment'员工编号',
name_ varchar(10) comment'员工姓名',
gender char(1) comment'性别',
age int comment'年龄',
idecard varchar(18) comment'身份证号',
entrydate date comment'入职时间'
);

# 给对应标签赋值
# show tables;
insert into emplot(id, workno, name_, gender, age, idecard, entrydate) values (1, '1', 'itcast', '男', 12, '123456789012345678', '2020-02-03');
insert into emplot(id, workno, name_, gender, age, idecard, entrydate) values (2, '2', 'itcast2', '男', 10, '123456789012345679', '2020-02-04');
insert into emplot values(3, '3', 'itcast3', '女', 18, '123456789012345610', '2020-02-05');
insert into emplot values(4, '4', 'itcast4', '女', 18, '123456789012345611', '2020-02-06'),(5, '5', 'itcast5', '女', 18, '123456789012345612', '2020-02-07');
insert into emplot(id, workno, name_, gender, age, idecard, entrydate) values (6, '6', 'itcast6', '无', 1000, '123456789000000000', '2020-02-09');
select * from emplot;

# 修改数据
update emplot set name_ = 'zjr' where id = 1;
update emplot set name_ = 'zqr' , gender = '男' where id = 5;
select * from emplot;

# 更改所有人的信息，不需要where
update emplot set entrydate = '2020-01-01';
select * from emplot;

# 删除数据
delete from emplot  where gender = '无';
select * from emplot;

# 删除所有，不需要where
delete from emplot;
select * from emplot;

# 删除表格
drop table emplot;
