# mysql8.0
mysql8.0

### usage
run by docker 
```
docker run -p 3306:3306 --name mysql_db_1 -v ./conf/my.cnf:/etc/mysql/my.cnf -v ./data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:8.0
```

run by docker-compose 
```
docker-compose up
```

use mysql-client 
```
docker run --rm -ti --link mysql_db_1:db mysql:8.0 mysql -h db -uroot -p
```
