FROM        ubuntu:quantal
MAINTAINER        kload "kload@kload.fr"

RUN apt-get update
RUN apt-get install openjdk-7-jre-headless -y
 
RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.0.deb
RUN dpkg -i elasticsearch-1.0.0.deb
RUN service elasticsearch start
