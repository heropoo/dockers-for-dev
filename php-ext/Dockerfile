FROM php:7.2-cli-alpine

MAINTAINER	Heropoo "aiyouyou1000@163.com"

#set a faster repositorie
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update && apk add --no-cache openssh-server gcc libc-dev make autoconf

RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config

ENV ROOT_PASSWORD 123456
RUN echo "root:${ROOT_PASSWORD}" | chpasswd

WORKDIR /usr/src

EXPOSE 22
EXPOSE 80

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

CMD ["/usr/bin/entrypoint.sh"]