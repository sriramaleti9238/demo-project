FROM openjdk:17
EXPOSE 8080
COPY target/demo-1-0.0.1-SNAPSHOT.jar demo-1-0.0.1-SNAPSHOT.jar
CMD "java","-jar","demo-1-0.0.1-SNAPSHOT.jar"