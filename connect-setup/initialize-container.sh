#!/bin/sh

# Exponential back off as kafka connect starts.
curl --connect-timeout 5 \
     --max-time 10 \
     --retry 12 \
     --retry-delay 0 \
     --retry-max-time 80 \
     --retry-connrefused \
     -X POST -H "Content-Type: application/json" --data @source-connector.json   http://connect:8083/connectors -w "\n"
curl -X POST -H "Content-Type: application/json" --data @sink-connector.json     http://connect:8083/connectors -w "\n"
#curl -X POST -H "Content-Type: application/json" --data @sink-connector-cdc.json http://connect:8083/connectors -w "\n"