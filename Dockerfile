FROM anapsix/alpine-java
LABEL maintainer="varshap*****i@gmail.com"

COPY /target/boot-jenkins-docker-0.0.1-SNAPSHOT.jar /home/boot-jenkins-docker-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "/home/boot-jenkins-docker-0.0.1-SNAPSHOT.jar"]
