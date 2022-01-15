# Create new jenkins user
RUN adduser --gecos "" --disabled-password --quiet jenkins
RUN echo "jenkins:jenkins" | chpasswd
RUN chown jenkins:jenkins /home/sheik/test
FROM openjdk:8
ADD target/login-docker.jar login-docker.jar
ENTRYPOINT ["java","-jar","/login-docker.jar"]
EXPOSE 8080
