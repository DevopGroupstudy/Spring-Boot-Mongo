FROM tomcat:8-jre8-alpine

WORKDIR /app

COPY target/spring-boot-mongo-1.0.jar /app

EXPOSE 8080

CMD ["java", "-jar", "/app/spring-boot-mongo-1.0.jar"]

