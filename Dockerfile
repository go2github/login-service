FROM openjdk:8
ADD target/login-docker.jar login-docker.jar
ENTRYPOINT ["java","-jar","/login-docker.jar"]
EXPOSE 8080