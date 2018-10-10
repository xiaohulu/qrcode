# 创建项目

## 创建 PostgreSQL 数据库

### 脚本

```
打开 pgAdmin
一、创建用户
具有登录、创建数据库和创建角色权限
二、创建数据库，将所有者指定为刚创建的用户
三、保存数据库脚本
最后、在 Spring Boot 配置文件中添加数据源
```

### 数据库脚本

```sql
-- User: my_qrcode_user
-- DROP USER my_qrcode_user;

-- 创建数据库用户 my_qrcode_user
CREATE USER my_qrcode_user WITH
	LOGIN
	NOSUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'my_qrcode_user';
COMMENT ON ROLE my_qrcode_user 
    IS '管理 my_qrcode 的用户';

-- 创建数据库
CREATE DATABASE my_qrcode
    WITH 
    OWNER = my_qrcode_user
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE my_qrcode
    IS '二维码管理数据库';
```