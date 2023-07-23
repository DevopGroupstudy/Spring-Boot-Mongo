FROM openjdk:22-ea-7

WORKDIR /app

COPY target/spring-boot-mongo-1.0.jar .

EXPOSE 8080

CMD ["java", "-jar", "./spring-boot-mongo-1.0.jar"]
