#!/bin/bash

export TRAEFIK_PASSWORD=$(cat auth/traefik.pass)

docker stack up -c config/traefik.yml traefik --with-registry-auth
docker stack up -c config/portainer.yml portainer --with-registry-auth
docker stack up -c config/mongodb.yml mongodb --with-registry-auth
docker stack up -c config/registry-ui.yml registry-ui --with-registry-auth
docker stack up -c config/shlink.yml shlink --with-registry-auth
docker stack up -c config/swarmpit.yml swarmpit --with-registry-auth
docker stack up -c config/lofi.yml lofi --with-registry-auth
docker stack up -c config/bagelbot.yml bagelbot --with-registry-auth 

echo "== done =="

read -p "Press enter to continue..."
