FROM tomcat:8.0-jre8

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
ADD ./target/enterprise.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh", "run"]
