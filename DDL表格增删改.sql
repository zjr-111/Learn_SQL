use dddd;
show tables;
desc z_use;
# z_use表格增加名为nickname的行
alter table z_use add nickname varchar(20) comment '昵称';
# 更改表格内标签的名称
alter table z_use change bian id int comment'编号';
# 删除z_use表格里的nickname行
alter table z_use drop nickname;
# 将z_use表格改名为emp
alter table z_use rename to emp;
# 如果emp表格存在删除表格
drop table if exists emp;
# 查看表格
desc emp;
