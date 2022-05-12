#!/bin/bash

MONGO_HOST="mongo1:27017"

waitForPort() {
  while ! curl --output /dev/null --silent "$1"; do sleep 1 && echo -n .; done
}

waitForPort "$MONGO_HOST"

mongo --host "mongodb://${MONGO_HOST}" config-replica.js
mongo --host "mongodb://${MONGO_HOST}" config-data.js