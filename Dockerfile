FROM keymetrics/pm2-docker-alpine:latest

# COPY pm2.json /app/
VOLUME ["/app"]

ENV NPM_CONFIG_LOGLEVEL warn
ENV pm2_config pm2.json

# CMD [ "pm2-docker", "start", "/app/${pm2_config}" ]
# CMD [ "sh", "-c", "echo ${pm2_config}", "|", "pm2-docker", "start" ]
CMD [ "sh", "-c", "pm2-docker start /app/${pm2_config}" ]

