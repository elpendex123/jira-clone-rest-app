# Use the OpenJDK image as the base image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the executable JAR file into the container
COPY ./build/libs/accessing-mongodb-data-rest-0.0.1-SNAPSHOT.jar /app/app.jar
# COPY target/accessing-mongodb-data-rest-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your Spring Boot application listens on (change this to your actual port)
EXPOSE 8080

# Command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "app.jar"]
