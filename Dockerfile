FROM node:22-alpine
RUN apk update && apk add bash && apk add zip && apk add unzip && apk add tar && apk add graphicsmagick && apk add tini

ENTRYPOINT ["/sbin/tini", "--"]
WORKDIR /www

EXPOSE 8000
CMD [ "/bin/bash", "-c", "mkdir -p logs;npm i;npm start > logs/debug.log 2>&1" ]