FROM openjdk:17-jdk-slim

ENV APP_HOME=/app
WORKDIR $APP_HOME

COPY target/app.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
