FROM maven:amazoncorretto as build
WORKDIR /appJava
COPY . .
RUN mvn package

FROM tomcat:alpine
COPY --from=build /appJava/target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
