###### BUILD APPROACH  ##############################
######################################################################################

# Use a Maven image as the base image
FROM maven:3.9.6-amazoncorretto-8-al2023 AS builder

# Set working directory
WORKDIR /app

# Copy only the necessary files for dependency resolution
COPY lib /app/lib
COPY build.sh /app/build.sh


# Make sure the build script is executable
RUN chmod +x /app/build.sh

# Run the build script to install dependencies
RUN /app/build.sh

# Use a smaller base image for the final image
FROM maven:3.9.6-amazoncorretto-8-al2023

# Copy the .m2 folder with resolved dependencies from the builder stage
COPY --from=builder /root/.m2 /root/.m2

# Set working directory
WORKDIR /app

# Copy the entire application
COPY . .

# Now you can use this image in your pipeline to build other projects

