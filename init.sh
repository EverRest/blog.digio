#!/bin/sh

mkdir -p ./mariadb-persistence
mkdir -p ./wordpress-persistence
mkdir -p ./nginx/conf/server_blocks

chown -R 1001:1001 ./mariadb-persistence
chown -R 1001:1001 ./wordpress-persistence
chown -R 1001:1001 ./nginx

if [ -f ./default.conf ]; then
  mv ./default.conf ./nginx/conf/server_blocks/default.conf
else
  echo "default.conf not found"
fi