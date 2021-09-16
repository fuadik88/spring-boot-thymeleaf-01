FROM openjdk:8u302-jdk-slim
VOLUME /tmp
EXPOSE 8083
ADD *.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]