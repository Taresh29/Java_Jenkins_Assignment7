# Use a lightweight JDK image as the base
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the java source file from your host to the container
COPY hello.java /app

# Compile the java file inside the container
RUN javac hello.java

# Command to run application when the container starts
CMD ["java", "hello"]
