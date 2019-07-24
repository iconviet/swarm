#!/bin/bash
echo -e "\e[1;32m[1/2] initializing cluster\e[0m"
docker swarm init --advertise-addr 52.148.114.3
echo -e "\e[1;32m[2/2] creating overlay networks\e[0m"
docker network create --driver overlay --subnet 10.1.1.0/24 infrastructure
docker network create --driver overlay --subnet 10.2.2.0/24 development
docker network create --driver overlay --subnet 10.3.3.0/24 testing
docker network create --driver overlay --subnet 10.4.4.0/24 staging
docker network create --driver overlay --subnet 10.5.5.0/24 production