FROM keymetrics/pm2-docker-alpine:latest

# COPY pm2.json /app/
VOLUME ["/app"]

ENV NPM_CONFIG_LOGLEVEL warn

CMD [ "pm2-docker", "start", "/app/pm2.json" ]

