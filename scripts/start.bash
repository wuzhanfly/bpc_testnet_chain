#!/bin/bash
if [ ! -f "./genesis.json" ]; then
  echo "NOT FOUND genesis.json FILE"
  exit 1
fi

docker-compose -f ./docker-compose.yaml pull
docker-compose -f ./docker-compose.yaml up -d
sleep 1