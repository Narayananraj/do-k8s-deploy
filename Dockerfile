# Use official Node.js image as a base
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json from the root of the project
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application code from the `src` directory into the container
COPY src/ ./src/

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the app
CMD ["npm", "start"]
