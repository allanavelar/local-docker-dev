default:build

build:
	docker build -t local-dev-docker-node:latest -t local-dev-docker-node:lts ./docker/node

