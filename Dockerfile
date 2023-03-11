FROM adoptopenjdk/openjdk11:x86_64-alpine-jre-11.0.18_10

WORKDIR /app

COPY target/*.jar hello.jar

COPY src/main/resources /app/config

ENTRYPOINT ["java", "-jar", "hello.jar", "--spring.profiles.active=${ENV:-dev}"]


