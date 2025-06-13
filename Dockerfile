# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set environment variables
ENV APP_HOME=/app
WORKDIR $APP_HOME

# Copy the compiled JAR (replace with your real jar file name if needed)
COPY target/*.jar app.jar

# Expose port (change if needed)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
