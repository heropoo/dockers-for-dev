# php-cli-alpine

php-cli based on AlpineLinux

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
docker build -t heropoo/php7.2-cli-alpine .
```

## run 
```
docker run --rm -ti -v $PWD/www/:/src/www -p 8080:80 heropoo/php7.2-cli-alpine
```
