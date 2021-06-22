FROM ubuntu:18.04

# RUN apt-get update && \
#     apt-get -y install git build-essential gdb \
#     llvm-4.0-dev clang-4.0 \ 
#     unzip curl libcurl4-openssl-dev autoconf libssl-dev libgd-dev libzip-dev \
#     bison re2c libxml2-dev libsqlite3-dev libonig-dev vim nodejs

RUN apt-get update && apt-get -y install build-essential pkg-config libxml2-dev libsqlite3-dev libssl-dev

ADD ./composer.phar /usr/bin/composer
COPY --from=php:7.4-cli-alpine /usr/src/php.tar.xz /usr/src/php.tar.xz

#RUN apt-get update && apt install xz-utils
#RUN cd /usr/src && xz -dk php.tar.xz && tar -xvf php.tar

RUN cd /usr/src && tar -xJvf php.tar.xz

RUN ./buildconf && \
    ./configure --disable-cgi --with-ffi --with-openssl --enable-mbstring --with-pcre-jit --with-zlib --enable-bcmath --with-curl --with-gd --enable-pcntl --enable-zip && \
    make -j16 && \
    make install
