# elasticsearch-docker
elasticsearch-docker

## build
```
docker build -t heropoo/elasticsearch .
```

## usage
run by docker 
```
docker run -d --name elasticsearch -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" heropoo/elasticsearch
```

run by docker-compose 
```
docker-compose up
```

