# php7.4-fpm-alpine

php7.4-fpm based on AlpineLinux

add some php-extension:
 - ffi
 - pcntl
 - gd 
 - mysql
 - mysqli 
 - pdo-mysql 
 - iconv 
 - openssl
 - ...

## build 
```
docker build -t heropoo/php7.4-fpm-alpine .
```

## run 
```
docker run -d -v /var/www/:/var/www heropoo/php7.4-fpm-alpine
```
