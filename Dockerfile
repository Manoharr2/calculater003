# Use Node.js base image
FROM node:12.2.0-alpine

# Set working directory inside the container
WORKDIR /app

# Copy project files into the container
COPY . .

# Install dependencies
RUN npm install

# Expose port 8000 for the application
EXPOSE 8000

# Command to start the app
CMD ["node", "app.js"]
