# Use Java 21 JDK base image
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy project files into the container
COPY . .

# Make Maven wrapper executable and build the project
RUN chmod +x mvnw && ./mvnw clean package -DskipTests

# Run the generated JAR (note the correct name)
CMD ["java", "-jar", "target/email-writer-sb-0.0.1-SNAPSHOT.jar"]
