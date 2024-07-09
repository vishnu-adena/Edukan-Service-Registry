FROM openjdk:24-jdk-oraclelinux8

# Set the working directory
WORKDIR /app

# Copy the Maven project files to the container
COPY . .

# Build the application
RUN mvn clean package -DskipTests

# Expose the port the application runs on
EXPOSE 8761

# Set the entry point to run the application
ENTRYPOINT ["java", "-jar", "target/serviceRegistry-0.0.1.jar"]
# Use an official Java runtime as a parent image
#FROM openjdk:24-jdk-oraclelinux8
#
## Set the working directory in the container
#WORKDIR /app
#
## Copy the local JAR file to the container
#COPY target/serviceRegistry-0.0.1.jar app.jar
#
## Expose the port the application runs on
#EXPOSE 8761
#
## Run the JAR file
#ENTRYPOINT ["java", "-jar", "app.jar"]
