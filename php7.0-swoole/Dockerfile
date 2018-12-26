FROM php:7.0-cli-alpine

MAINTAINER	Heropoo "aiyouyou1000@163.com"

#set a faster repositorie
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update && apk add build-base autoconf \
	freetype-dev libjpeg-turbo-dev libmcrypt-dev libpng-dev \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install gd iconv mcrypt pdo pdo_mysql mysqli

RUN wget https://github.com/swoole/swoole-src/archive/v4.2.10.tar.gz && tar zxvf v4.2.10.tar.gz \
	&& cd swoole-src-4.2.10 && phpize && ./configure && make && make install && docker-php-ext-enable swoole

WORKDIR /srv/www
EXPOSE 80
