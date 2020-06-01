# config-server-boshrelease

# Purpose
Create a bosh release for spring cloud config server that uses https for access instead of http.
We are using prebuilt docker images and using the containers-boshrelease to build this bosh release.

# Prebuilt Artifacts
1. https://hub.docker.com/_/nginx
1. https://hub.docker.com/r/hyness/spring-cloud-config-server/
1. https://github.com/jhunt/containers-boshrelease

Did not use jwilder/nginx image since it was not clear that we could take advantage of his 
enhancements.

# Restrictions

1. Only being built at this time work with Git
2. Looked into using Tomcat built into the Config Server.
The docker image and maintainer would not allow changing port numbers.


Deploys dockerize Spring Cloud Config Server 

# Tools Used

make, spruce, docker-compose, docker direnv

# Commands

Commands useful during development. 

\# Save typing "bosh -e environment" all the time

export BOSH_ENVRIONMENT=snw-nabramovitz-lab  
export DOCKER_HOST=<bosh vms ip>:5001
export BOSH_DEPLOYMENT=config-server


bosh envs  
bosh vms
bosh deployments  
bosh ssh -d config-server  
bosh deploy -d config-server
docker-compose ps  
docker ps  
docker exec -it oss_config-server_1 /bin/bash  
docker exec -it nginx /bin/bash  
curl https://localhost|<bosh vms ip>:/foo/development  

