# Use a specific Node.js version
FROM node:13-alpine

# Set up environment variables
ENV MONGO_DB_USERNAME=root \
    MONGO_DB_PWD=root

# Create the application directory
RUN mkdir -p /home/app

# Set the working directory for subsequent commands
WORKDIR /home/app

# Copy application files to the working directory
COPY . /home/app

# Install application dependencies
RUN npm install

# Expose the port 3000
EXPOSE 3000

# Run the application
CMD ["node", "server.js"]
