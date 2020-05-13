#!/bin/sh

# generate host keys if not present
ssh-keygen -A

if [ ! -z ${ROOT_PASSWORD} ] && [ "${ROOT_PASSWORD}" != "123456" ]; then
    echo "root:${ROOT_PASSWORD}" | chpasswd
fi

if [ ! -z ${GIT_PASSWORD} ] && [ "${GIT_PASSWORD}" != "123456" ]; then
    echo "git:${GIT_PASSWORD}" | chpasswd
fi

chown -R git:git /home/git 
chmod  600 /home/git/.ssh/authorized_keys 

# do not detach (-D), log to stderr (-e), passthrough other arguments
exec /usr/sbin/sshd -D -e "$@"
