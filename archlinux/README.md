# Archlinux

ArchLinux with sshd.

support:
* ssh

## build 
```
docker build -t heropoo/archlinux .
```

## run 
```
docker run --rm -d -p 2222:22 heropoo/archlinux
```