# Use a Java 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/*.jar app.jar

# Expose the dynamic port (Render will assign it)
EXPOSE 8080

# Command to run the JAR using the Render port
CMD ["sh", "-c", "java -Dserver.port=$PORT -jar app.jar"]
