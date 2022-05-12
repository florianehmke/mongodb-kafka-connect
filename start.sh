#!/bin/bash
docker-compose up -d mongo1-setup
sleep 15

docker-compose up -d kafka
sleep 15

docker-compose up -d connect-setup
docker-compose up -d mongo1-express kafka-ui