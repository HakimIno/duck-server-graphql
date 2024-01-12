# Use Node 18 with Alpine as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock (if available) to the working directory
COPY package*.json ./

# Install Nest.js dependencies using Yarn
RUN yarn install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Nest.js application
RUN yarn run build

# Specify the entry point command to run the application in development mode
ENTRYPOINT ["yarn", "run", "start:dev"]
