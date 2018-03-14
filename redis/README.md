# redis-docker
redis-docker

### usage
run by docker 
```
docker run -p 6379:6379 --name redis -v ./redis.conf:/etc/redis.conf -v ./data:/data -d redis:alpine
```

run by docker-compose 
```
docker-compose up
```

