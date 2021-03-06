FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/Product-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 3600
ENV JAVA_OPTS=""
RUN sh -c "touch Product-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "Product-0.0.1-SNAPSHOT.jar" ]
