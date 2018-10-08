# 创建项目

1. java 项目
2. sql 项目
3. js 项目


1. 介绍如何创建项目；
2. 介绍项目结构

## 脚本

创建 Spring boot 项目

```
使用浏览器打开生成 Spring boot 项目的网站
选择构建工具
设置项目基本信息
设置项目依赖
下载生成的项目
解压后，使用 Eclipse 导入 Maven 项目
这是导入成功后的项目结构
```

创建 PostgreSQL 数据库

```
打开 pgAdmin
一、创建用户
具有登录、创建数据库和创建角色权限
二、创建数据库，将所有者指定为刚创建的用户
三、保存数据库脚本
最后、在 Spring Boot 配置文件中添加数据源
```

集成 liquebase

```
liquebase 用于跟踪数据库变化
一、确认已导入 liquebase 依赖
二、创建 liquebase 配置文件
三、在项目配置文件中配置 liquebase
项目运行后
变化的数据库结构和数据
会同步到数据库上
```

1. 数据库
2. liquebase
3. 项目结构

一张片子描述数据库对象
1. 用户，访问和管理
2. 数据库

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


Spring boot 项目结构

```
设计好的项目结构，便于更好的组织代码

```

## 发音

1. Spring [sprɪŋ]
2. boot [bu:t]
3. Eclipse [ɪˈklɪps]
4. Maven [ˈmeɪvn]
5. admin [ˈædmɪn]
6. code [kəʊd]
7. application [ˌæplɪˈkeɪʃn]
8. properties [p'rɒpətɪz]

## 感悟

一门编程语言要具备两大功能，一是组织数据，一是组织代码。

## 参考资料

1. http://www.css88.com/doc/typescript/doc/handbook/tutorials/React.html