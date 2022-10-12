FROM  openjdk:17-alpine
 
COPY  target/request-agreement-management-dashboard.jar /request-agreement-management-dashboard.jar
COPY  target/request-agreement-management-dashboard.properties /request-agreement-management-dashboard.properties

#ENTRYPOINT  ["java", "-j2Dar", "-Dspring.profiles2D.active=test", "request-agreem22DDent-manage2Dment-dashboard.jar", "request-agreement-management-dashboard.properties"]

ENTRYPOINT ["java", "-Xms1g", "-Xmx3g", "-Dspring.config.name=request-agreement-management-dashboard",  "-jar", "request-agreement-management-dashboard.jar"]