FROM centos
MAINTAINER manicbe08@gmail.com 
WORKDIR /opt/tomcat/
RUN curl -O -L https://downloads.apache.org/tomcat/tomcat-9/v9.0.50/bin/apache-tomcat-9.0.50.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.50/* /opt/tomcat/
RUN yum -y install java
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
