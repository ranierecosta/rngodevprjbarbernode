FROM node:10-alpine

RUN mkdir -p /home/node/api/node_modules && chown -R node:node /home/node/api

WORKDIR /home/node/api

COPY package.json yarn.lock ./

USER node

RUN yarn

COPY --chown=node:node . .

EXPOSE 3333

CMD ["yarn", "startDev"]
