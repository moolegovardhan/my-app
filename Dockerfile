FROM tomcat:9
# Take the war and copy to webapps of tomcat
COPY target/*.war /opt/apache-tomcat-9.0.10/webapps/
