use dddd;
show tables;
desc z_use;
alter table z_use add nickname varchar(20) comment '昵称';
alter table z_use change bian id int comment'编号';
alter table z_use drop nickname;
alter table z_use rename to emp;
drop table if exists emp;
desc emp;
