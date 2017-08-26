FROM jboss/base-jdk:8
LABEL maintainer trifont@gmail.com

ENV HAWTIO_VERSION 1.5.3
ENV ACTIVEMQ_VERSION 5.15.0


WORKDIR /tmp
RUN \
  curl -SL https://oss.sonatype.org/content/repositories/public/io/hawt/hawtio-default-offline/${HAWTIO_VERSION}/hawtio-default-offline-${HAWTIO_VERSION}.war -o /tmp/hawtio.war && \
  curl -SL https://www.apache.org/dist/activemq/5.14.5/apache-activemq-5.14.5-bin.tar.gz -o /tmp/activemq.bin.tar.gz && \
  
