# php7.3-cli-alpine

php7.3-cli based on AlpineLinux

add some php-extension:
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
docker build -t heropoo/php7.3-cli-alpine .
```

## run 
```
docker run --rm -ti -v $PWD/www/:/src/www heropoo/php7.3-cli-alpine
```
