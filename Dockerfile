# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set environment variables
ENV APP_HOME=/app
WORKDIR $APP_HOME

# Optional: Install bash + useful debug tools (jar, curl, etc.)
RUN apt-get update && \
    apt-get install -y bash curl openjdk-17-jdk-headless && \
    rm -rf /var/lib/apt/lists/*

# Copy the compiled JAR (adjust if needed)
COPY target/app.jar app.jar

# Expose port (change if needed)
EXPOSE 80

# Set the default command
ENTRYPOINT ["java", "-jar", "app.jar"]
