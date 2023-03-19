FROM node:19-alpine
RUN apk update && apk add bash

WORKDIR /www

EXPOSE 8000
CMD [ "/bin/bash", "-c", "mkdir -p logs;npm i;npm start > logs/debug.log" ]