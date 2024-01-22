FROM node:20.11.0

WORKDIR /user/app

COPY package.json */

RUN yarn install

COPY . .

EXPOSE 8080

CMD [ "yarn","run","dev" ]