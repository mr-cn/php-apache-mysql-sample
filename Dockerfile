# 使用官方 PHP-Apache 镜像
FROM daocloud.io/php:7-apache

# docker-php-ext-install 为官方 PHP 镜像内置命令，用于安装 PHP 扩展依赖
# 贴吧云签程序采用MySQLi扩展
RUN docker-php-ext-install mysqli

# /var/www/html/ 为 Apache 目录
COPY . /var/www/html/

#为程序提供写入权限
COPY entrypoint.sh /entrypoint.sh 
RUN chmod 777 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
