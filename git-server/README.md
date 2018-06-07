# git-server

A git server based on AlpineLinux.

support:
* ssh
* git

## build 
```
docker build -t heropoo/git-server .
```

## run 
```
docker run --rm -d -v ./git:/home/git -p 2222:22 heropoo/git-server
```
