FROM gradle:7.6-jdk17 AS builder
WORKDIR /app
COPY . .
RUN mkdir -p build/libs && echo "Simulated Spring Boot Application" > build/libs/app.jar

FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=builder /app/build/libs/app.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
