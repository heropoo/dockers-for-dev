FROM php:7.0-cli-alpine

MAINTAINER	Heropoo "aiyouyou1000@163.com"

#set a faster repositorie
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update && apk add freetype-dev libjpeg-turbo-dev libmcrypt-dev libpng-dev \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install gd iconv mcrypt pdo pdo_mysql mysqli

COPY --from=composer /usr/bin/composer /usr/bin/composer

#RUN mkdir /srv/www
WORKDIR /srv/www
EXPOSE 80
