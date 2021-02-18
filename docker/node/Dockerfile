ARG BUILD_VERSION=15
FROM node:${BUILD_VERSION}
RUN npm i -g npm@7.11

ENV PATH="/usr/src/code/node_modules/.bin:$PATH"
ENV NODE_ENV=development

WORKDIR /usr/src/code

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["npm", "version"]
