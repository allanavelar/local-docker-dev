FROM node:15
RUN npm i -g npm@7.11
# RUN npm i -g parcel-bundler nwb webpack rollup
WORKDIR /usr/src/code
ENV PATH="/usr/src/code/node_modules/.bin:$PATH"
ENV NODE_ENV=development
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["npm", "version"]
