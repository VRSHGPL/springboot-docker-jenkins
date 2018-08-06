FROM anapsix/alpine-java
LABEL maintainer="varshapillai@gmail.com"

COPY /target/boot-jenkins-docker-0.0.1-SNAPSHOT.jar /home/boot-jenkins-docker-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "/home/boot-jenkins-docker-0.0.1-SNAPSHOT.jar"]
