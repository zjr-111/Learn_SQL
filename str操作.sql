# 字符串拼接
SELECT CONCAT('Hello','Mysql');

# 变为小写
SELECT LOWER('Hello');

# 变为大写
SELECT UPPER('Hello');

# 左填充
SELECT LPAD('01',5,'-');

# 右填充
SELECT RPAD('01',5,'-');

# 删除两边的空格
SELECT TRIM(' Hello MySQL ');

# 返回指定位置起指定长度的字符串
SELECT SUBSTRING('Hello MySQL',2,6);

# 变更企业人员的工号，统一为5位数，不足的在前面补0;
UPDATE emp SET workno = LPAD(workno,5,'0');
