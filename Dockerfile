FROM debian:latest
MAINTAINER yogy rahmawan <yogy.frestarahmawan@gmail.com>

RUN cd && apt-get -y update && \ 
	apt-get -y install wget vim && \
	wget https://dl.google.com/go/go1.10.1.linux-amd64.tar.gz && \
	tar xzf go1.10.1.linux-amd64.tar.gz 

ADD bashrc bashrc
RUN touch ~/.bashrc && \
	cat bashrc >> ~/.bashrc
	
