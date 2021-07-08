FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git 
RUN mkdir /srv/node && mkdir /srv/scripts
WORKDIR /app/scripts
COPY scripts/* .

RUN chmod +x install-nvm.sh
run ./install-nvm.sh

SHELL ["/bin/bash", "-c"]

ENTRYPOINT ["/bin/bash"]
