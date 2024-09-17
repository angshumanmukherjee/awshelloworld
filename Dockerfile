# Use the official OpenJDK 11 base image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the target directory to the working directory in the container
COPY target/helloservice-0.0.1-SNAPSHOT.jar /app/helloservice.jar

# Specify the command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/helloservice.jar"]