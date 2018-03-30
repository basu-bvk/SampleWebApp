# Docker file for tomcat
FROM tomcat:8.0.43-jre8

RUN mkdir -p /usr/local/my_app
ADD . /usr/local/my_app/
ADD /usr/local/my_app/swa_webservice/target/swa_webservice.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]