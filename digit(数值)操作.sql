# 向上取整
SELECT CEIL(1.1);

# 向下取整
SELECT FLOOR(2.1);

# 取余
SELECT MOD(13,3);

# 0~1 随机数
SELECT RAND();

# 四舍五入
SELECT ROUND(2.344,2);

# 生成一个六位数的随机验证码
SELECT LPAD(ROUND(RAND() * 1000000, 0), 6, '0');
