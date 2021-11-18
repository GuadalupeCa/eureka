FROM openjdk:11
WORKDIR /eureka
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
EXPOSE 8761
CMD ["./mvnw", "spring-boot:run"]