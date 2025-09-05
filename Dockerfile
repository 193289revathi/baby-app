FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and install deps first (caches layers for faster builds)
COPY package*.json ./
RUN npm install --production

# Copy rest of the app
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]

