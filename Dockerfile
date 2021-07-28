FROM mytomcat:9.5.0 
COPY ./$WORKSPACE/target/JenkinsWar.war /opt/tomcat/webapps/
EXPOSE 8080
