#!/bin/sh

# generate host keys if not present
#ssh-keygen -A

# check wether a root-password is provided
if [ ! -z ${ROOT_PASSWORD} ] && [ "${ROOT_PASSWORD}" != "123456" ]; then
    echo "root:${ROOT_PASSWORD}" | chpasswd
fi

if [ ! -z ${PASSWORD} ] && [ "${PASSWORD}" != "123456" ]; then
    echo "heropoo:${PASSWORD}" | chpasswd
fi

# do not detach (-D), log to stderr (-e), passthrough other arguments
exec /usr/sbin/sshd -D -e "$@"