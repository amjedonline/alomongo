# alomongo
Dockerizing the Mongodb

### Getting started
1. Make sure you have
 - _docker_ installed
 - _docker-machine_ running in your machine.
 - _Environment Variable_ set for docker host, ip and SSL settings.
2. From the main directory
`docker build username/alomongo .`
3. To push to your repo
`docker push username/alomongo`
4. To run the image
`docker run -p 27017:27017 --name mongo_001 -d username/alomongo`

Note: You now have a mongo daemon instance running and server port mapped to your local 27017 TCP port.


### TODO
1. Use EBS for data persistence
2. Log on some standard logging solution
3. Backup and restore mechanism
4. Scalizing mechanism
5. Monitoring


### Resources
1. [Dockerizing mongo - official](https://docs.docker.com/engine/examples/mongodb/)
2. [Installing mongo on Ubuntu](https://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)
