FROM openjdk:8-jdk-alpine
LABEL maintainer="Mykola Kruliv <mykola.kruliv@outlook.com>"
LABEL Description="Petclinic App Dockerfile"
ENV MAIN_DIR /app
RUN mkdir -p ${MAIN_DIR}
WORKDIR ${MAIN_DIR}
COPY spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]