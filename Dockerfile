FROM debian:10
RUN apt-get update
RUN apt-get -y install wget cc65
