# whick official java image
FROM openjdk:oraclelinux8
# working directory
WORKDIR /app
# copy from your host(PC, laptop) to container
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
# run this inside the image
RUN ./mvnw dependency:go-offline
COPY src ./src
# run the container
CMD ["./mvnw", "spring-boot:run"]