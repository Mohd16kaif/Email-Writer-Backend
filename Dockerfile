FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . /app

# Fix permission issue and build
RUN chmod +x mvnw && ./mvnw clean package -DskipTests

CMD ["java", "-jar", "target/email-reply-generator-0.0.1-SNAPSHOT.jar"]
