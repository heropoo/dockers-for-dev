# Archlinux

ArchLinux with ssh sudo.

## support:
* base-devel
* ssh
* sudo
* vim
* iproute2 && net-tools

## build 
```
docker build -t heropoo/archlinux-full .
```

## run 
```
docker run --rm -d -p 2222:22 -e PASSWORD="heropoo" heropoo/archlinux-full
```
