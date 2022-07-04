
#!/bin/bash

echo "== create traefik password for user: tyler =="
export TRAEFIK_PASSWORD=$(openssl passwd -apr1)

if [ -z "$TRAEFIK_PASSWORD" ]
then 
  exit 1
fi # pw verification fail

echo "$TRAEFIK_PASSWORD" > ./auth/traefik.pass
