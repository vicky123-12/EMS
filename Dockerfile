# Use the official Tomcat image as the base image
FROM tomcat:9

# Set environment variables
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

WORKDIR $CATALINA_HOME/webapps

# Copy your WAR file into the webapps directory
COPY target/EMS-0.0.1-SNAPSHOT.war $CATALINA_HOME/webapps/

# Expose the default Tomcat port
EXPOSE 8090

# Start Tomcat
CMD ["catalina.sh", "run"]
