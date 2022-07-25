FROM openjdk:17-jdk-alpine

EXPOSE 8082

COPY  ./target/bogdancev-0.0.1-SNAPSHOT.jar ./app.jar

CMD ["java", "-jar", "./app.jar"]