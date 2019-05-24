# gogs
gogs

### usage
run by docker 
```
docker run --name=gogs -p 10022:22 -p 10080:3000 -v /var/gogs:/data -d gogs/gogs
```

run by docker-compose 
```
docker-compose up
```

Vist the url [http://127.0.0.1:10080](http://127.0.0.1:10080)