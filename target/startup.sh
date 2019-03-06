#!/bin/bash

# java -jar /mail-server/mail-consumer.jar --name="Spring" --server.port=8090 &
# nohup java -jar mail-producer.jar --name="Spring" --server.port=8080 > mail-producer.log &


tname=`date +%Y-%m-%d-%H%M%S`

touch index.html
echo "startup the spring-hello" > index.html

nohup java -jar spring-hello.jar --name="Spring" --server.port=8080 > "run-logs/spring-hello-${tname}.log" 2>&1 &

tail -f index.html
