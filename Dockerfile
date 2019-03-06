FROM openjdk:8

WORKDIR /
COPY target ./spring-hello-server

WORKDIR /spring-hello-server

ENTRYPOINT ["/spring-hello-server/startup.sh"]

CMD ["/bin/bash"]
