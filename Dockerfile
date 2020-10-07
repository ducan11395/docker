FROM php:7.3-apache

RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis

RUN apt-get install -y sendmail libpng-dev

RUN apt-get install -y zlib1g-dev 
RUN apt-get install -y libzip-dev

RUN docker-php-ext-install mbstring

RUN docker-php-ext-install zip

RUN docker-php-ext-install gd

EXPOSE 80
