FROM tomcat:8-jre8-alpine

WORKDIR /app

COPY target/*.jar /app

EXPOSE 8080

