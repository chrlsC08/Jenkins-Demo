# Use an official Node.js runtime as a parent image
FROM node:20
 
# Set the working directory in the container
WORKDIR /app
 
# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./
 
# Install the serve package globally
RUN npm install 
 
# Copy the build directory to the working directory
COPY . .
 
# Expose port 8080 to the outside world
EXPOSE 3000
 
# Command to run the application
CMD ["npm", "start"]