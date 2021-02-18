ARG BUILD_VERSION=7.4-fpm
FROM php:${BUILD_VERSION} as base

ENV APP_ENV=prod
ENV APP_DEBUG=0
ENV PHP_MEMORY_LIMIT=${PHP_MEMORY_LIMIT:-"256M"}
ENV COMPOSER_ALLOW_SUPERUSER=${COMPOSER_ALLOW_SUPERUSER:-1}
ENV COMPOSER_PROCESS_TIMEOUT=${COMPOSER_PROCESS_TIMEOUT:-0}
ENV COMPOSER_MEMORY_LIMIT=${COMPOSER_MEMORY_LIMIT:-"2G"}
ENV PATH="/usr/src/code/vendor/bin:bin:$PATH"

RUN apt-get -yq update && apt-get -yqq install \
    libzip-dev git ssh zip

RUN echo "memory_limit = ${PHP_MEMORY_LIMIT}" > /usr/local/etc/php/conf.d/php_memory.ini \
    && mkdir -p ~/.ssh && ssh-keyscan -H github.com >>~/.ssh/known_hosts \

RUN docker-php-ext-install pdo_mysql pdo_sqlite zip \
    && pecl install apcu xdebug

WORKDIR /usr/src/code
COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["php", "-v"]

FROM base as xdebug
RUN docker-php-ext-enable apcu
