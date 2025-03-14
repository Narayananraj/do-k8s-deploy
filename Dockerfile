# Use an official base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if they exist)
COPY package*.json ./

# Install dependencies
RUN npm install

# Check if 'src' directory exists before copying it
RUN if [ -d "src" ]; then cp -r src/ ./src/; else echo "No src directory found"; fi

# Copy the rest of the application files (if necessary)
COPY . .

# Expose the port your app will run on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
