# php-cli-alpine

php-cli based on AlpineLinux

some php-extension:
 - gd 
 - mysql
 - mysqli 
 - pdo-mysql 
 - iconv 
 - mcrypt
 - openssl
 - ...

with `composer`

can run `laravel`

## build 
```
docker build -t heropoo/php-cli-alpine .
```

## run 
```
docker run --rm -ti -v $PWD/www/:/srv/www -p 8080:80 heropoo/php-cli-alpine /bin/sh
```
