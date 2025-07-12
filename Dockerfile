FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY . /app

RUN chmod +x mvnw && ./mvnw clean package -DskipTests

CMD ["java", "-jar", "target/email-reply-generator-0.0.1-SNAPSHOT.jar"]
