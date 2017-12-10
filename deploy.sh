#!/bin/bash
apt -y install software-properties-common
apt add-apt-repository ppa:webupd8team/java
apt update
apt -y install oracle-java8-installer unzip
wget https://github.com/ant-media/Ant-Media-Server/releases/download/ams-v1.1.1/ant-media-server-1.1.1.zip -O /tmp/ams.zip
cd /tmp
unzip ams.zip
