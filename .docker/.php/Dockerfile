FROM php:8.2-fpm-alpine

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN apk update

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions gd xdebug

RUN docker-php-ext-enable opcache
RUN set -ex \
  && apk --no-cache add \
    postgresql-dev
RUN docker-php-ext-install mysqli pdo_pgsql pdo_mysql exif pcntl bcmath

COPY ./src /usr/app/

USER root

WORKDIR /usr/app

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN chmod -Rf 0777 storage

RUN composer install

