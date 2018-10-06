
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