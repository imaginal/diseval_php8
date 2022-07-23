ARG PHP_BASE_IMAGE_VERSION=8.1-fpm
FROM php:${PHP_BASE_IMAGE_VERSION}

RUN docker-php-source extract
ADD source /usr/src/php/ext/diseval
RUN docker-php-ext-install diseval

