#!/bin/bash
if [ ! -f "./genesis.json" ]; then
  docker run --rm -v ${PWD}/config/config.json:/config.json -t ghcr.io/wuzhanfly/v3-genesis-config:latest /config.json > ./genesis.json
fi
