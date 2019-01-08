# python3

## build
```sh
docker build -t heropoo/python3 .
```

## usage
```sh
docker run -ti -v $PWD:/root/projects -p 8888:8888 heropoo/python3 /bin/sh
```
