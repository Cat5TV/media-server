#!/bin/bash
apt update
apt -y install software-properties-common dirmngr unzip

add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" -y
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
apt update
apt -y install oracle-java8-installer jsvc

wget https://github.com/ant-media/Ant-Media-Server/releases/download/ams-v1.1.1/ant-media-server-1.1.1.zip -O /tmp/ams.zip
cd /tmp
unzip ams.zip

mv ant-media-server /usr/local/antmedia
cp /usr/local/antmedia/antmedia /etc/init.d/
update-rc.d antmedia defaults
update-rc.d antmedia enable

useradd -d /usr/local/antmedia/ -s /bin/false -r antmedia
chown -R antmedia:antmedia /usr/local/antmedia/

service antmedia start

service antmedia status

echo "Running on Port 5080"
