# Use an official Node.js runtime as a parent image
FROM node:18

# Create app directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for cached installs)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy application source code
COPY . .

# Inform Docker that the container listens on port 3000
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]
