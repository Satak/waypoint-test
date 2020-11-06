
FROM node:14-alpine

LABEL name="Waypoint test"
LABEL description="Waypoint test app"
LABEL maintainer="satak"

WORKDIR /usr/src/app

COPY ./package*.json ./
RUN npm install

COPY . .
USER node
EXPOSE 3000

CMD ["npm", "start"]
