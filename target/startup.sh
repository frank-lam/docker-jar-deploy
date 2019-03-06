#!/bin/bash

# java -jar /mail-server/mail-consumer.jar --name="Spring" --server.port=8090 &
# nohup java -jar mail-producer.jar --name="Spring" --server.port=8080 > mail-producer.log &

jar_name='quick-docker-1.0-SNAPSHOT.jar'

tname=`date +%Y-%m-%d-%H%M%S`

touch index.html
echo "startup the webapp" > index.html

nohup java -jar ${jar_name} --name="Spring" --server.port=8080 > "run-logs/webapp-${tname}.log" 2>&1 &

tail -f index.html
