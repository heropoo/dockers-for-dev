FROM alpine:3.11

MAINTAINER	Heropoo "aiyouyou1000@163.com"

#set a faster repositorie
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update && apk add --no-cache git openssh-server

RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config

ENV ROOT_PASSWORD 123456
RUN echo "root:${ROOT_PASSWORD}" | chpasswd

RUN adduser -s /usr/bin/git-shell -D git

ENV GIT_PASSWORD 123456
RUN echo "git:${GIT_PASSWORD}" | chpasswd

WORKDIR /home/git

EXPOSE 22
ENV NAME git-server

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

CMD ["/usr/bin/entrypoint.sh"]
