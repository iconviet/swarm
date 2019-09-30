#!/bin/bash
sudo mkdir -p /opt/bin
sudo curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /opt/bin/docker-compose
sudo chmod +x /opt/bin/docker-compose

#rancher
echo 'docker run --rm radial/busyboxplus:curl curl $@' > /usr/bin/curl && chmod +x /usr/bin/curl
sudo wget -O /usr/bin/docker-compose https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` && sudo chmod +x /usr/bin/docker-compose
