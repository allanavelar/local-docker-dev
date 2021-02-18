default:build

build:
	docker build --build-arg "BUILD_VERSION=15" -t local-docker-dev-node:15 ./docker/node
	docker build --build-arg "BUILD_VERSION=16" -t local-docker-dev-node:16 -t local-docker-dev-node:latest ./docker/node
	docker build --build-arg "BUILD_VERSION=7.4-fpm" -t local-docker-dev-php:7 ./docker/php
	docker build --build-arg "BUILD_VERSION=8-fpm" -t local-docker-dev-php:8 -t local-docker-dev-php:latest ./docker/php

upgrade:
	npm remove -g @allanavelar/local-docker-dev && \
	npm i -g git+https://github.com/allanavelar/local-docker-dev.git && \
	npx ddev-init
