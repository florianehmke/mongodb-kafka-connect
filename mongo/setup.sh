#!/bin/bash

sleep 10
mongo --host mongodb://mongo1:27017 config-replica.js
sleep 10
mongo --host mongodb://mongo1:27017 config-data.js