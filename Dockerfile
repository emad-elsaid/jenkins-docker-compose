FROM jenkins/jenkins:lts

USER root
RUN apt-get update && apt-get install -y docker docker-compose
USER jenkins
