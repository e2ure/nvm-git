FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git 
RUN apt-get install -y nano 
RUN mkdir /srv/node && mkdir /srv/scripts
WORKDIR /srv/scripts
COPY scripts/* ./

ARG node_version

RUN chmod +x ./*
RUN ./install-nvm.sh ${node_version}



#SHELL ["/bin/bash", "-c", " source ~/.profile "]

#SHELL ["/bin/bash","./set-node-version.sh"]

WORKDIR /

ENTRYPOINT ["/bin/sh"]
