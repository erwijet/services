#!/bin/sh

docker stack down traefik
docker stack down portainer
docker stack down mongodb
docker stack down shlink
docker stack down swarmpit
docker stack down lofi
docker stack down bagelbot
docker stack down registry-ui
