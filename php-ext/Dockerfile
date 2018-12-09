FROM php:7.2-cli-alpine

MAINTAINER	Heropoo "aiyouyou1000@163.com"

#set a faster repositorie
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update && apk add gcc libc-dev make autoconf

WORKDIR /usr/src

EXPOSE 80