###### C0rretto BUILD APPROACH  ##############################
######################################################################################

# Use a Maven image as the base image
FROM maven:3.9.6-amazoncorretto-8-al2023 AS builder

# FROM maven:3.9.6-amazoncorretto-8 AS builder

# Set working directory
WORKDIR /app

# Copy only the necessary files for dependency resolution
COPY lib /app/lib
COPY  build.sh /app/build.sh


# Make sure the build script is executable
RUN chmod +x /app/build.sh  /app/build.sh

# # Run the build script to install dependencies
# RUN /app/build.sh

# Use a smaller base image for the final image
FROM maven:3.9.6-amazoncorretto-8-al2023


# Copy the .m2 folder with resolved dependencies from the builder stage
COPY --from=builder /root/.m2 /root/.m2

# Remove the lib folder and files to reduce image size
RUN rm -rf /app/lib /app/build.sh

# Set working directory
WORKDIR /app

# Now you can use this image in your pipeline to build other projects


# # ###### Eclipse-openjdk BUILD APPROACH  ##############################
# # ######################################################################################

# # Use a Maven image as the base image
# FROM maven:3.9.6-eclipse-temurin-8-alpine AS builder


# # Set working directory
# WORKDIR /app

# # Copy only the necessary files for dependency resolution
# COPY lib /app/lib
# COPY  build.sh /app/build.sh


# # Make sure the build script is executable
# RUN chmod +x /app/build.sh

# # Run the build script to install dependencies
# RUN /app/build.sh

# # Use a smaller base image for the final image
# FROM maven:3.9.6-eclipse-temurin-8-alpine



# # Copy the .m2 folder with resolved dependencies from the builder stage
# COPY --from=builder /root/.m2 /root/.m2

# # Remove the lib folder and files to reduce image size
# RUN rm -rf /app/lib /app/build.sh

# # Set working directory
# WORKDIR /app

# # Now you can use this image in your pipeline to build other projects






