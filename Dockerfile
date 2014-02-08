FROM ubuntu:precise
MAINTAINER Michiel de Jong "michiel@unhosted.org"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN echo "deb http://www.robertix.com/telechargements/binaires/ ./" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y python-software-properties screen kiwix
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs
ADD . ./fizno


RUN cd fizno && mkdir knowledge
RUN cd fizno && sh dl.sh
RUN cd fizno && npm install

EXPOSE 49080
CMD cd fizno && node ./docker.js
