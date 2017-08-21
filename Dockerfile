FROM keymetrics/pm2-docker-alpine:latest

COPY pm2.json /app/
VOLUME ["/app/ws"]

ENV NPM_CONFIG_LOGLEVEL warn

CMD [ "pm2-docker", "start", "pm2.json" ]

