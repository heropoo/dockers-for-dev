# php8.0-fpm-alpine

php8.0-fpm based on AlpineLinux

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
docker build -t heropoo/php8.0-fpm-alpine .
```

## run 
```
docker run -d -v /var/www/:/var/www heropoo/php8.0-fpm-alpine
```
