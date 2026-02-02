FROM node:20-alpine

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm ci

# Copy app source
COPY . .

# App runtime port (see section 3)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
