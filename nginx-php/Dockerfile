FROM php:7.1-fpm-alpine

MAINTAINER	Heropoo "aiyouyou1000@163.com"

#set a faster repositorie
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update && apk add build-base autoconf openssl openssl-dev \
	freetype-dev libjpeg-turbo-dev libmcrypt-dev libpng-dev \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) gd iconv pdo pdo_mysql mysqli pcntl sockets

#mongodb
COPY mongodb-1.5.5.tgz /root/ 
RUN cd /root && tar -zxvf mongodb-1.5.5.tgz && cd mongodb-1.5.5 && phpize && ./configure && make -j$(getconf _NPROCESSORS_ONLN) && make install && docker-php-ext-enable mongodb

#swoole
COPY swoole-4.4.3.tgz /root/ 
RUN cd /root && tar -zxvf swoole-4.4.3.tgz  && cd swoole-4.4.3 && phpize && ./configure && make -j$(getconf _NPROCESSORS_ONLN) && make install && docker-php-ext-enable swoole

WORKDIR /srv/www


