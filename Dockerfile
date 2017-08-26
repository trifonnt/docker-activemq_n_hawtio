FROM trifonnt/alpine-activemq:5.15.0
LABEL maintainer trifont@gmail.com

ENV ACTIVEMQ_HOME /opt/activemq

ENV HAWTIO_VERSION 1.5.3
ENV HAWTIO_WAR_PATH $ACTIVEMQ_HOME/hawtio/hawtio.war

USER root
RUN apk add --update curl && \
    rm -rf /var/cache/apk/* && \
    mkdir -p ${ACTIVEMQ_HOME}/hawtio && \
    curl -SL https://oss.sonatype.org/content/repositories/public/io/hawt/hawtio-default-offline/${HAWTIO_VERSION}/hawtio-default-offline-${HAWTIO_VERSION}.war | tar -xvz -C ${$ACTIVEMQ_HOME}/hawtio && \
    chown -hR activemq:activemq ${ACTIVEMQ_HOME}/hawtio

EXPOSE 1883 5672 8161 61613 61614 61616

USER activemq
WORKDIR $ACTIVEMQ_HOME

CMD ["/bin/sh", "-c", "bin/activemq console"]
