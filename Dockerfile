# Use an official Maven image to build the application
FROM maven:3.8.6-jdk-8-alpine AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the dependencies file
COPY pom.xml .

# Copy the application code
COPY src ./src

# Build the application
RUN mvn package

# Use an official Java image to run the application
FROM eclipse-temurin:21-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file
COPY target/*.jar ./app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]