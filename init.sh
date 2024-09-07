#!/bin/sh

mkdir -p ./mariadb-persistence
mkdir -p ./wordpress-persistence
mkdir -p ./nginx/conf/server_blocks

if [ -f ./default.conf ]; then
  mv ./default.conf ./nginx/conf/server_blocks/default.conf
else
  echo "default.conf not found"
fi