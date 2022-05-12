#!/bin/bash

MONGO_HOST="127.0.0.1:27017"

waitForPort() {
  while ! curl --output /dev/null --silent "$1"; do sleep 3 && echo -n .; done && sleep 3
}

docker-compose up -d mongo1
waitForPort "$MONGO_HOST"

docker-compose up -d \
  mongo1-express \
  mongo1-setup \
  kafka \
  kafka-ui \
  zookeeper \
  connect \
  connect-setup
