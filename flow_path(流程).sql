# if 函数
SELECT IF(TRUE,'ok','error');

# ifnull 函数
SELECT IFNULL('ok','default');

SELECT IFNULL('','default');

SELECT IFNULL(null,'default');

# 查询emp表的员工姓名和工作地址（北京/上海 --> 一线城市 ，其他 --> 二线城市）
SELECT
	name_,
	( CASE workaddress WHEN '北京' THEN '一线城市' WHEN '上海' THEN '一线城市' ELSE '二线城市' END ) AS '工作地址' 
FROM emp;

# 统计各个员工的年龄，>=70, 展示年迈 >=40, 展示中年 否则，展示青年
SELECT
	name_,
	( CASE age WHEN age >= 70 THEN '年迈' WHEN age >= 40 THEN '中年' ELSE '青年' END ) AS '年龄'
FROM emp;
