default:build
DKB=docker build --build-arg
PREF=local-docker-dev-

build:
	$(DKB) "BUILD_VERSION=15" -t ${PREF}node:15 ./docker/node
	$(DKB) "BUILD_VERSION=16" -t ${PREF}node -t ${PREF}node:16 -t ${PREF}node:latest ./docker/node
	$(DKB) "BUILD_VERSION=7.4-fpm" --target=base -t ${PREF}php:7 ./docker/php
	$(DKB) "BUILD_VERSION=7.4-fpm" --target=xdebug -t ${PREF}php:7-xdebug --target=xdebug ./docker/php
	$(DKB) "BUILD_VERSION=8-fpm" --target=base -t ${PREF}php -t ${PREF}php:8 -t ${PREF}php:latest ./docker/php
	$(DKB) "BUILD_VERSION=8-fpm" --target=xdebug -t ${PREF}php:8-xdebug ./docker/php

upgrade:
	npm remove -g @allanavelar/local-docker-dev && \
	npm i -g git+https://github.com/allanavelar/local-docker-dev.git && \
	npx local-docker-dev-init
