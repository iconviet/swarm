#!/bin/bash
mkdir -p /opt/bin
curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /opt/bin/docker-compose
chmod +x /opt/bin/docker-compose
