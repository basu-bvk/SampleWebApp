# Docker file for tomcat
FROM tomcat:8.0.43-jre8

# Adding linshare war file

# . is giving this path /var/lib/docker/tmp/docker-builder460409013 
RUN mkdir -p /usr/local/my_app
RUN ADD . /usr/local/my_app/
RUN ADD "$WAR_FILE" /usr/local/tomcat/webapps/

EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]