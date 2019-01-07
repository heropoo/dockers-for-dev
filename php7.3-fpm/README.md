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
docker build -t heropoo/php7.3-fpm-alpine .
```

## run 
```
docker run -d -v $PWD/www/:/srv/www heropoo/php7.3-fpm-alpine
```