#!/bin/sh

versions=("7.0" "7.1" "7.2" "7.3")

echo "What is your favourite PHP version?"
select php_version in "7.0" "7.1" "7.2" "7.3"; do
	for i in ${versions[@]};do 
		if [ "$i" == "$php_version" ]; then
			echo $i
			break 2
		fi
	done
	echo "Please input a number in [1-4]"
	continue
done

echo "You have selected PHP$php_version"

read -p "Comfirm to build $php_version y/n? " confirm

[ $confirm != y ] && echo "You input $confirm . Emmmm, Bye Bye!" && exit

#sed '1d' -i Dockerfile
sed "1c FROM php:$php_version-fpm-alpine" -i Dockerfile

docker build -t heropoo/php-fpm-alpine .

echo "Now your PHP version is ";
docker run -ti --name=tmp-php heropoo/php-fpm-alpine php -v

tmp_container_id=`docker ps -a|grep tmp-php|awk '{print $1}'`

echo "Tmp container id is $tmp_container_id"

echo "Copy tmp_container:/usr/local/etc/php/php.ini-development ./conf/php/php.ini";
docker cp ${tmp_container_id}:/usr/local/etc/php/php.ini-development ./conf/php/php.ini
echo "Copy tmp_container:/usr/local/etc/php-fpm.d/www.conf ./conf/php/php-fpm.conf";
docker cp ${tmp_container_id}:/usr/local/etc/php-fpm.d/www.conf ./conf/php/php-fpm.conf

echo "Remove tmp container $tmp_container_id"
docker rm $tmp_container_id

echo "Success";




