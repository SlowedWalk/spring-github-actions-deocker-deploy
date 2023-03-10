FROM openjdk:17
#FROM maven:3.6.3 AS maven

# Create a working directory
WORKDIR /app
COPY . /app
COPY ./target/*.jar /app/target/app.jar
#
# Compile the project and create a jar file
#RUN mvn clean package

# Using java 17

#ARG JAR_FILE=/app/target/*.jar

# Copy the jar file from the maven image to the java image
#COPY --from=maven ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","target/app.jar"]