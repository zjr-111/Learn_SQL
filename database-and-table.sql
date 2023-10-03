create database if not exists dddd;
use dddd;
create table if not exists z_use(
bian int comment'编号',
gong varchar(10) comment'员工编号',
name_ varchar(10) comment'员工姓名',
xing char(1) comment'性别',
age int comment'年龄',
shen varchar(18) comment'身份证号',
ruzhi date comment'入职时间'
) comment'员工信息表';
desc z_use
show create table z_use;