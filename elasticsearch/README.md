# elasticsearch-docker
elasticsearch-docker

### usage
run by docker 
```
docker run -d --name elasticsearch -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:5.6-alpine
```

run by docker-compose 
```
docker-compose up
```

