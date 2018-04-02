# Docker file for tomcat
FROM tomcat:8.0.43-jre8

#COPY . /usr/local/tomcat/webapps/
#CMD find . -name '*.war' -exec cp {} /usr/local/tomcat/webapps/  \;
#COPY find /home/travis/build -iname *.war /usr/local/tomcat/webapps/
ADD . /usr/local/my_app/
RUN find /usr/local/my_app/ -iname '*.war' -exec cp {} /usr/local/tomcat/webapps/ \;

EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]