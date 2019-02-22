# php-ext-dev-env

php-extension dev enviroment

## build 
```
docker build -t heropoo/php-ext-dev-env .
```

## run 
```
docker run -d -p 2222:22 -p 8080:80 heropoo/php-ext-dev-env
```

## login 
use ssh login your docker container
```
#default pwd 123456
ssh root@127.0.0.1:2222  
```

## start dev
```
cd /usr/src/php-src/ext
./ext_skel --extname=hello_world
```