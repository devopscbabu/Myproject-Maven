FROM tomcat:latest
COPY ./webapp.war webapp.war
ENTRYPOINT ["java","-war","/webapp.war"]
