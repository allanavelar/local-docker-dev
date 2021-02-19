ARG BUILD_VERSION=7.4-fpm
FROM php:${BUILD_VERSION} as base

ENV COMPOSER_VERSION=2
ENV APP_ENV=dev
ENV APP_DEBUG=1
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
    && pecl install apcu \
    && docker-php-ext-enable apcu

WORKDIR /usr/src/code
COPY --from=composer:${COMPOSER_VERSION} /usr/bin/composer /usr/local/bin/composer

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["php", "-v"]

FROM base as xdebug

ENV PHP_XDEBUG_CONFIG_FILE=${PHP_INI_DIR}/conf.d/docker-php-ext-xdebug.ini \
    PHP_XDEBUG_VERSION=3.0.4

RUN pecl install -o -f xdebug-${PHP_XDEBUG_VERSION} && \
    docker-php-ext-enable xdebug

RUN echo "[xdebug]" > ${PHP_XDEBUG_CONFIG_FILE} && \
    echo "zend_extension=xdebug.so" >> ${PHP_XDEBUG_CONFIG_FILE} && \
    #echo "xdebug.mode=coverage" >> ${PHP_XDEBUG_CONFIG_FILE} && \
    echo "xdebug.profiler_enable=1" >> ${PHP_XDEBUG_CONFIG_FILE} && \
    echo "xdebug.remote_enable=1" >> ${PHP_XDEBUG_CONFIG_FILE} && \
    echo "xdebug.remote_handler=dbgp" >> ${PHP_XDEBUG_CONFIG_FILE} && \
    echo "xdebug.remote_mode=req" >> ${PHP_XDEBUG_CONFIG_FILE} && \
    echo "xdebug.remote_host=host.docker.internal" >> ${PHP_XDEBUG_CONFIG_FILE} && \
    echo "xdebug.remote_port=9000" >> ${PHP_XDEBUG_CONFIG_FILE} && \
    echo "xdebug.remote_autostart=1" >> ${PHP_XDEBUG_CONFIG_FILE} && \
    echo "xdebug.remote_connect_back=1" >> ${PHP_XDEBUG_CONFIG_FILE} && \
    echo "xdebug.idekey=PHPSTORM" >> ${PHP_XDEBUG_CONFIG_FILE}
