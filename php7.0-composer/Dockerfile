FROM php:7.0-cli-alpine

MAINTAINER	Heropoo "aiyouyou1000@163.com"

ADD composer.phar composer.phar
RUN install composer.phar /usr/bin/composer && rm -rf composer.phar && composer selfupdate

CMD ["composer"]
