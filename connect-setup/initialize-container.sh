#!/bin/sh

until curl -s -f -o /dev/null "http://connect:8083/connectors"
do
  echo "connect not up yet..."
  sleep 5
done

curl -X DELETE http://connect:8083/connectors/mongo-source -w "\n"
curl -X DELETE http://connect:8083/connectors/mongo-sink -w "\n"
curl -X DELETE http://connect:8083/connectors/mongo-sink-cdc -w "\n"

curl -X POST -H "Content-Type: application/json" --data @source-connector.json   http://connect:8083/connectors -w "\n"
curl -X POST -H "Content-Type: application/json" --data @sink-connector.json     http://connect:8083/connectors -w "\n"
curl -X POST -H "Content-Type: application/json" --data @sink-connector-cdc.json http://connect:8083/connectors -w "\n"

