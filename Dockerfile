FROM node:19-alpine
RUN apk update && apk add bash && apk add zip && apk add graphicsmagick

WORKDIR /www

EXPOSE 8000
CMD [ "/bin/bash", "-c", "mkdir -p logs;npm i;npm start > logs/debug.log" ]