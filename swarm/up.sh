#!/bin/bash
echo -e "\e[1;32m[1/1] deploying $1 stack\e[0m"
docker stack deploy -c $1.yml $1