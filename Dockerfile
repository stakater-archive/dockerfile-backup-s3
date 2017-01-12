FROM tutum/dockup

MAINTAINER Atif Saddique <atif@aurorasolutions.io>

RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6 && \
    sudo echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list && \
    sudo apt-get update && \
    sudo apt-get install -y mongodb-org && \
    sudo mkdir -p /dumps

ADD *.sh /

RUN sudo chmod +x /run.sh && \
    sudo chmod +x /backup.sh

