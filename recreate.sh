#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <container_name> [container_name...]"
  exit 1
fi
cd /opt/yams
docker compose -f docker-compose.yaml -f docker-compose.custom.yaml up -d "$@"
