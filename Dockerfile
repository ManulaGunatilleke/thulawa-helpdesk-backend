# Use official Node.js 20 Alpine image for lightweight container
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies (include dev dependencies since it's dev)
RUN npm install

# Copy the rest of your app
COPY . .

# Expose port 8070 (your backend port)
EXPOSE 8070

# Start your app
CMD ["node", "server.js"]
