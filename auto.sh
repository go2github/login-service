mvn clean install


docker build -t login-service .
docker run -p 9090:8080 login-service

fi