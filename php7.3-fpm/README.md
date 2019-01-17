# php7.3-fpm-alpine

php7.3-fpm based on AlpineLinux

add some php-extension:
 - mongodb 
 - swoole
 - pcntl
 - gd 
 - mysql
 - mysqli 
 - pdo-mysql 
 - iconv 
 - openssl
 - ...

with `composer`

can run `laravel` project

## build 
```
cp ../nginx-php/mongodb-1.5.3.tgz ./src
cp ../nginx-php/swoole-src-4.2.10.tar.gz ./src
docker build -t heropoo/php7.3-fpm-alpine .
```

## run 
```
docker run -d  -v $PWD/php-fpm.conf:/usr/local/etc/php-fpm.d/www.conf -v /var/www/:/var/www heropoo/php7.3-fpm-alpine
```