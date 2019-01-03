# nginx-php

## build
```
docker build -t heropoo/php7.0-fpm-alpine .
```

with some php-extension:
 - mongodb 
 - pcntl 
 - swoole 
 - gd 
 - mysqli 
 - pdo-mysql 
 - iconv 
 - openssl
 - ...

## usage
run by docker-compose 
```
docker-compose up
```

