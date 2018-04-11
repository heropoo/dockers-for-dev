# nginx

### usage
run by docker 
```
docker run --rm -p 8080:80 -p 8443:443 -v ./conf/nginx.conf:/etc/nginx/nginx.conf -v ./conf/conf.d:/etc/nginx/conf.d -v ./conf/certs:/etc/nginx/certs -v ./logs:/var/log/nginx -v ./www:/srv/www -d nginx:alpine
```

run by docker-compose 
```
docker-compose up
```