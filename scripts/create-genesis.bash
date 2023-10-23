#!/bin/bash
if [ ! -f "./genesis.json" ]; then
  docker run --rm -v ${PWD}/config/config.json:/config.json -t ghcr.io/wuzhanfly/bpc-genesis-config-v2:latest /config.json > ./genesis.json
fi
