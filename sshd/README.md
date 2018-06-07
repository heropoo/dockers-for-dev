# sshd

A sshd-server based on AlpineLinux.

support:
* ssh

## build 
```
docker build -t heropoo/sshd .
```

## run 
```
docker run --rm -d -p 2222:22 heropoo/sshd
```
