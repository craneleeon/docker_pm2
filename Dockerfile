FROM keymetrics/pm2-docker-alpine:latest

RUN apk update && apk add --no-cache bash \
    tzdata 
    # rm -r /root/.cache

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
RUN echo Asia/Shanghai > /etc/timezone 

VOLUME ["/app"]

ENV NPM_CONFIG_LOGLEVEL warn
ENV pm2_config pm2.json

# CMD [ "pm2-docker", "start", "/app/${pm2_config}" ]
# CMD [ "sh", "-c", "echo ${pm2_config}", "|", "pm2-docker", "start" ]
CMD [ "sh", "-c", "pm2-docker start /app/${pm2_config}" ]

