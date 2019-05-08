JENKINS
=======

This repo contains a docker-compose file that starts a jenkins container and a
jenkins slave contains secured in a docker-compose network

## USAGE

1. clone this repo
1. install docker and docker-compose if you don't have them
1. run `docker-compose build` to build both master and slave images
1. run `docker-compnse run` to run both containers at the same time
1. access jenkins from your browser `localhost:8080`
1. the password jenkins asks for should appear in your terminal while the
   container is starting


## Note

if you turned of the containers all data related to the master will be save in a
docker volume, slave will be reset, that's useful if something went south on the
slave and you want to reset it, execute `docker-compose down` then run the
cotainers again.
