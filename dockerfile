FROM alpine:latest
run apk --no-cache add openjdk17
EXPOSE 8091
ADD target/jenkins-demo.jar jenkins-demo.jar
ENTRYPOINT ["java", "-jar", "/jenkins-demo.jar"]