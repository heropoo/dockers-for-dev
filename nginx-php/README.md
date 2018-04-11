# nginx

### usage
run by docker 
```
docker run -p 3306:3306 --name mysql5.6 -v ./conf/my.cnf:/etc/mysql/my.cnf -v ./logs:/var/log/mysql/ -v ./data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:5.6
```

run by docker-compose 
```
docker-compose up
```

