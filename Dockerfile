FROM tomcat:latest
COPY /var/lib/jenkins/workspace/Pipeline-ECR-Project/webapp/target /usr/local/tomcat/webapps
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
