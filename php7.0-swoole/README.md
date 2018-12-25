# php7.0-swoole

php-cli based on AlpineLinux

some php-extension:
 - swoole 
 - gd 
 - mysql
 - mysqli 
 - pdo-mysql 
 - iconv 
 - mcrypt
 - openssl
 - ...

## build 
```
docker build -t heropoo/php7.0-swoole .
```

## run 
```
docker run --rm -ti -v $PWD/www:/srv/www -p 8080:80 heropoo/php7.0-swoole /bin/sh
```