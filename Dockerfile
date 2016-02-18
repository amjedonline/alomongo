FROM ubuntu:14.04
MAINTAINER Mohammed Amjed Chand <amjedonline@gmail.com>

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927 
RUn echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

RUN apt-get update && apt-get install -y \
    mongodb-org=3.2.1 \
    mongodb-org-server=3.2.1 \
    mongodb-org-shell=3.2.1 \
    mongodb-org-mongos=3.2.1 \
    mongodb-org-tools=3.2.1

# https://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
# Pin the version to prevent unsolicited upgrades

RUN echo "mongodb-org hold" | sudo dpkg --set-selections
RUN echo "mongodb-org-server hold" | sudo dpkg --set-selections
RUN echo "mongodb-org-shell hold" | sudo dpkg --set-selections
RUN echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
RUN echo "mongodb-org-tools hold" | sudo dpkg --set-selections

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod"]
