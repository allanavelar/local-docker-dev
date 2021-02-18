default:build

build:
	docker build --build-arg "BUILD_VERSION=15" -t local-dev-docker-node:15 ./docker/node
	docker build --build-arg "BUILD_VERSION=16" -t local-dev-docker-node:16 -t local-dev-docker-node:latest ./docker/node
	docker build --build-arg "BUILD_VERSION=7.4-fpm" -t local-dev-docker-php:7 ./docker/php
	docker build --build-arg "BUILD_VERSION=8-fpm" -t local-dev-docker-php:8 -t local-dev-docker-php:latest ./docker/php
