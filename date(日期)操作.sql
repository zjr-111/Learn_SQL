# CURDATE() 返回当前日期
SELECT CURDATE();

# CURTIME() 返回当前时间
SELECT CURTIME();

# NOW() 返回当前日期和时间
SELECT NOW();

# YEAR(date) 获取指定date的年份
SELECT YEAR(NOW());

# MONTH(date) 获取指定date的月份
SELECT MONTH(NOW());

# DAY(date) 获取指定date的日期
SELECT DAY(NOW());

# DATE_ADD(date, INTERVAL expr type) 返回一个日期/时间值加上一个时间间隔expr后的时间值
SELECT DATE_ADD(NOW(),INTERVAL 70 YEAR);

# DATEDIFF(date1, date2) 返回起始时间date1和结束时间date2之间的天数
SELECT DATEDIFF('2034-11-17', '2021-12-01');

# 查询所有员工的入职天数，并根据入职天数倒叙排序
SELECT name_, DATEDIFF(CURDATE(), entrydate) AS 'entrydates' FROM emp ORDER BY entrydates DESC;
