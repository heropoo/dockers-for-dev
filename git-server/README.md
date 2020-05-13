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
git init --bare git/test.git
cat ~/.ssh/id_rsa.pub > git/.ssh/authorized_keys

docker run -d -v $PWD/git:/home/git -p 2222:22 heropoo/git-server
```

## clone
```
git clone ssh://git@127.0.0.1:2222/home/git/test.git
```
