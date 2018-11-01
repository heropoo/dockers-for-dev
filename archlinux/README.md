# Archlinux

ArchLinux with ssh sudo.

## support:
* ssh
* sudo

## build 
```
docker build -t heropoo/archlinux .
```

## run 
```
docker run --rm -d -p 2222:22 -e PASSWORD="heropoo" heropoo/archlinux
```
