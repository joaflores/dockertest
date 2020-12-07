FROM openjdk:16-jdk-alpine3.12
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=demo/target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]