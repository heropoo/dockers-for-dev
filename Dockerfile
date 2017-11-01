FROM php:7.0-alpine

RUN docker-php-ext-install pdo pdo_mysql mysqli iconv mcrypt \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd 

RUN pecl install swoole \
	&& docker-php-ext-enable swoole

#COPY --from=composer:1.5 /usr/bin/composer /usr/bin/composer

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
EXPOSE 80
ENV NAME php7.0-service

CMD [ "php", "-S", "0.0.0.0:80", "-t", "/usr/src/myapp"]
