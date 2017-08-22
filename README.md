# docker_pm2
customized pm2-docker 

run:
docker run -p 9001-9100:9001-9100 -v `pwd`:/app --name pm2 craneleeon/docker_pm2:latest
