FROM tomcat:8-jre8-alpine

COPY target/*.jar  /usr/local/tomcat/webapps/maven-web-app.war
