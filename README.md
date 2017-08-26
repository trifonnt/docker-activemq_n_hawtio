   Plugging the HawtIO Monitoring Webapp into a Stand-Alone ActiveMQ Instance
 + https://dzone.com/articles/plugging-hawtio-monitoring


## Idea
Create Docker container based on:
- JBoss-JDK

Add:
 - ActiveMQ
 - HawtIO


## Steps

```shell
export HAWTIO_VERSION=1.5.3
export ACTIVEMQ_VERSION=5.15.0

curl -SL https://oss.sonatype.org/content/repositories/public/io/hawt/hawtio-default-offline/${HAWTIO_VERSION}/hawtio-default-offline-${HAWTIO_VERSION}.war -o /tmp/hawtio.war
curl -SL https://www.apache.org/dist/activemq/5.14.5/apache-activemq-5.14.5-bin.tar.gz -o /tmp/activemq.bin.tar.gz
```
