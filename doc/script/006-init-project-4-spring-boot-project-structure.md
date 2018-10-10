# 创建项目

## Spring boot 项目结构

### 脚本

```
Spring boot 项目对应分层架构中的后端
main/java 中存放功能代码
main/resources 中存放资源文件
test/java 中存放单元测试和集成测试代码
application.properties 是项目配置文件
pom.xml 是 Maven 配置文件
server 中存项目级文件
controller 中存控制器类
service 中存业务逻辑接口类
service.impl 中存业务逻辑实现类
dao 中存数据访问接口
dao.impl 中存数据访问实现类
model 中存实体类
util 中存工具类
util.constant 中存常量类
db/changelog 中存数据库变更脚本
db/sql 中存最新数据库脚本
static 中存 JavaScript、CSS文件、图片
templates 中存 Html 文件
```

简化版

```
功能代码
资源文件
测试代码
Maven 配置文件
全局类
控制器层
数据访问接口、实现
实体类
业务逻辑接口、实现
工具类
常量类
数据库变更脚本、SQL 脚本
JS、CSS文件、图片
Html 文件
项目配置文件
```