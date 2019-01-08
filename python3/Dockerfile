FROM python:3-alpine

MAINTAINER	Heropoo "aiyouyou1000@163.com"

#set a faster repositorie
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update && apk add build-base autoconf

RUN mkdir -p /usr/src/python3
COPY requirements.txt /usr/src/python3

RUN pip install -r /usr/src/python3/requirements.txt -i https://pypi.douban.com/simple

WORKDIR /root/projects

EXPOSE 8000

CMD ["/bin/sh"]
