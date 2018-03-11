# git-server

A git server based on AlpineLinux.

support:
* ssh

## build 
```
docker build -t heropoo/git-server .
```

## run 
```
docker run --rm -d -ti -v ./git:/home/git -p 2222:22 heropoo/git-server
```

or run by `docker-compose` 
```
docker-compose up
```
