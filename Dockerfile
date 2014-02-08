FROM ubuntu:precise
MAINTAINER Michiel de Jong "michiel@unhosted.org"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y python-software-properties python g++
RUN apt-get install -y make redis-server libicu-dev libexpat1
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs
ADD . ./fizno

RUN cd fizno && npm install

EXPOSE 49080
CMD cd fizno && node ./docker.js
