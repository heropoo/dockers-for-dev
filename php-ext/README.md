# php-ext

php-extension dev enviroment

## build 
```
docker build -t heropoo/php-ext .
```

## run 
```
docker run -d -p 2222:22 -p 8080:80 heropoo/php-ext
```

## login 
use ssh login your docker container
```
#default pwd 123456
ssh root@127.0.0.1:2222  
```

## start dev
```
cd /usr/src/
tar -xf php.tar.xz
cd php-7.2.10/ext

./ext_skel --extname=hello_world

cd ..

phpize

./configure

make
make install

docker-php-ext-enable hello_world

php -m
```