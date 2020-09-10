FROM php:7.4-fpm-buster

RUN apt update && apt install -y git libzip-dev zip unzip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '8a6138e2a05a8c28539c9f0fb361159823655d7ad2deecb371b04a83966c61223adc522b0189079e3e9e277cd72b8897') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

RUN composer global require laravel/installer

WORKDIR /src

COPY ./src /src
COPY ./docker/phpfpm/php.ini /usr/local/etc/php/php.ini

RUN chmod -R a=rwX /src/storage
