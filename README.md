# tieba-sign-docker

>本项目Copy自 **[DaoCloud/php-apache-mysql-sample](https://github.com/DaoCloud/php-apache-mysql-sample)** 项目。

>第一次接触docker，学习ing……

### 干啥用的

其实就是给Kenvix的**[Tieba-Cloud-Sign](https://github.com/MoeNetwork/Tieba-Cloud-Sign/)**项目，添加了dockerfile，使其能在docker上运行

### 改动列表

添加：dockerfile

```dockerfile
FROM daocloud.io/php:7-apache
RUN docker-php-ext-install mysqli
COPY . /var/www/html/
```

### 包含环境

Apache
PHP7

### MySQL如何配置

mysql需要再次新建一个MySQL的应用，然后link到这个应用

反正daocloud是在“服务集成”中间。

### 如何安装

先按照正常的流程来，然后选择在应用引擎上安装，数据库连接信息使用如下常量即可。

数据库主机：MYSQL_PORT_3306_TCP_ADDR
数据库名：MYSQL_INSTANCE_NAME
数据库用户名：MYSQL_USERNAME
数据库密码：MYSQL_PASSWORD

当然这些也是daocloud告诉我的=。=别的地方没测试过，我只是一只小白