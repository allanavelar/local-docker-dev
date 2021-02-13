FROM node:15
RUN npm install -g npm@7.11.1
WORKDIR /usr/src/code
ENV PATH="/usr/src/code/node_modules/.bin:$PATH"
ENV NODE_ENV=development
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["npm", "version"]
