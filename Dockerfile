# Use official Node.js LTS base image
FROM node:18-bullseye-slim

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire app source code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Start the application
CMD ["npm", "start"]
