FROM openjdk:8u212-jre-alpine

LABEL kafka_version=2.6.2
LABEL scala_version=2.12
ENV KAFKA_HOME=/opt/kafka

ENV PATH=${PATH}:${KAFKA_HOME}/bin

ADD ./kafka_2.12-2.6.2.tgz /opt/

RUN cp -rf /opt/kafka_2.12-2.6.2 /opt/kafka

RUN mkdir -p /data/kafka-logs

RUN apk add --no-cache bash curl jq


ENTRYPOINT ["/opt/kafka/bin/kafka-server-start.sh" ,"/opt/kafka/config/server.properties"]