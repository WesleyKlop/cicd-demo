FROM composer:2 as builder

WORKDIR /app

COPY composer.json composer.lock ./

RUN composer install

FROM php:8-fpm-alpine

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions pdo_mysql apcu opcache

WORKDIR /srv

COPY --from=builder /app/vendor ./vendor
COPY . .
