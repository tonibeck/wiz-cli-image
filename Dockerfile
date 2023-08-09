# Use an older official Node.js base image
FROM node:10

# Set the working directory
WORKDIR /usr/src/app

# Copy the local package files to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Define the default port the app will run on
EXPOSE 3000

# Define the command to run the app
CMD ["node", "server.js"]