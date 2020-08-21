FROM node:12.18-alpine3.9

RUN mkdir /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json package.json
RUN npm install --silent 
RUN npm install -g --silent @angular/cli@7.3.6

COPY . .

LABEL maintainer="Ryuichi Miyazaki <rmiyazaki11@ucsbalum.com>"

CMD ng serve --host 0.0.0.0 --open 
