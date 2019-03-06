FROM openjdk:8

WORKDIR /
COPY target ./webapp

WORKDIR /webapp

ENTRYPOINT ["/webapp/startup.sh"]

CMD ["/bin/bash"]
