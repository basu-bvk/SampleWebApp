# Docker file for tomcat
FROM tomcat:8.0.43-jre8

# Adding linshare war file
# ADD . /usr/local/tomcat/webapps/
# . is giving this path /var/lib/docker/tmp/docker-builder460409013 
RUN mkdir -p /usr/local/my_app
RUN cd /
ADD . /usr/local/my_app/
ADD $WAR_PATH /usr/local/tomcat/webapps/

EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]