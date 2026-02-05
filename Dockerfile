# Use Tomcat 10 as the base image
FROM tomcat:10.1-jdk17-openjdk-slim

# Remove default Tomcat apps (optional but cleaner)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from your Jenkins build into Tomcat's webapps
# Note: 'target/*.war' refers to the file inside the Jenkins workspace
COPY target/*.war /usr/local/tomcat/webapps/my-web-app.war

EXPOSE 8081
# We use the default Tomcat start command
CMD ["catalina.sh", "run"]