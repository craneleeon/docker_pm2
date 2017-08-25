# docker_pm2
customized pm2-docker 

+ run:

      docker run -p 9001-9100:9001-9100 -v `pwd`:/app --name pm2 craneleeon/docker_pm2:latest

+ run with specified config file:

      docker run -p 9001-9100:9001-9100 -v `pwd`:/app -e pm2_config=otherpm2.json --name pm2 craneleeon/docker_pm2:latest
