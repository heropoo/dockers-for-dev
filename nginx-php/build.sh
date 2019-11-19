#!/bin/sh

php_version=7.3

image_name="heropoo/php-${php_version}-fpm-alpine"

docker build -t $image_name .

echo "Now your PHP version is ";
docker run -ti --name=tmp-php $image_name php -v

tmp_container_id=`docker ps -a|grep tmp-php|awk '{print $1}'`

echo "Tmp container id is $tmp_container_id"

echo "Copy tmp_container:/usr/local/etc/php/php.ini-development ./conf/php/php.ini";
docker cp ${tmp_container_id}:/usr/local/etc/php/php.ini-development ./conf/php/php.ini
echo "Copy tmp_container:/usr/local/etc/php-fpm.d/www.conf ./conf/php/php-fpm.conf";
docker cp ${tmp_container_id}:/usr/local/etc/php-fpm.d/www.conf ./conf/php/php-fpm.conf

echo "Remove tmp container $tmp_container_id"
docker rm $tmp_container_id

echo "Success";
