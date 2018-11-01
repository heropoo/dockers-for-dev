FROM base/archlinux

MAINTAINER Heropoo "aiyouyou1000@163.com"

RUN pacman -Syy && pacman -S --noconfirm openssh sudo vim
RUN rm -rf /var/cache/pacman

RUN useradd -m heropoo 
ENV PASSWORD 123456
ENV ROOT_PASSWORD 123456
RUN echo 'heropoo:123456' |chpasswd
RUN echo 'root:123456' |chpasswd
RUN echo 'heropoo ALL=(ALL) ALL' >> /etc/sudoers

RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa &&\
    ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa &&\
    ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa &&\
    ssh-keygen -f /etc/ssh/ssh_host_ed25519_key -N '' -t ed25519
RUN sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config && sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config && sed -i "s/#AuthorizedKeysFile/AuthorizedKeysFile/g" /etc/ssh/sshd_config

EXPOSE 22

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

CMD ["/usr/bin/entrypoint.sh"]
