FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git 
RUN apt-get install -y nano 
RUN mkdir /srv/node && mkdir /srv/scripts
WORKDIR /srv/scripts
COPY scripts/* ./

RUN chmod +x ./*
RUN ./install-nvm.sh



SHELL ["/bin/bash", "-c", " source ~/.profile "]

RUN ./set-node-version.sh

WORKDIR /

ENTRYPOINT ["/bin/sh"]
