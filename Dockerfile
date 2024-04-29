# Base image to use
FROM node:latest

# set a working directory
WORKDIR /src

# Copy across all our files
COPY . /src

# Ask npm to install the dependencies
RUN npm install -g supervisor
RUN npm install

# Expose our application port (3000)
EXPOSE 3000