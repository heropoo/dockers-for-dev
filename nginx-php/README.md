# nginx-php

with some php-extension:
 - mongodb 
 - pcntl 
 - swoole 
 - sockets 
 - gd 
 - mysqli 
 - pdo-mysql 
 - iconv 
 - openssl
 - ...
 
## build
```
docker build -t heropoo/php-7.3-fpm-alpine .
```
 
## usage
run by docker-compose 
```
docker-compose up
```

## change php version and build
```
./change-php-version.sh
``` 
