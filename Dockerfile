FROM maven:3.9.9-amazoncorretto-17
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package
CMD java -jar target/greet-service.jar