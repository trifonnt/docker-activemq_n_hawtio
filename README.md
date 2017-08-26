[Plugging the HawtIO Monitoring Webapp into a Stand-Alone ActiveMQ Instance](https://dzone.com/articles/plugging-hawtio-monitoring)


## Idea
Create Docker container based on:
- JBoss-JDK

Add:
 - ActiveMQ
 - HawtIO


How to build Docker image
-------------------------
```shell
docker build -t trifonnt/activemq-hawtio:5.15.0-1.5.3 .
```

How to push to Docker hub
-------------------------
```shell
docker push trifonnt/activemq-hawtio:5.15.0-1.5.3
```

Usage
-----
Run ActiveMQ and HawtIO with default configuration:
```shell
docker run --name my-activemq-hawtio -d -P -p 8162:8161 trifonnt/activemq-hawtio:5.15.0-1.5.3
```
