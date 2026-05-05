# Base image — Node.js 18
FROM node:20-alpine

# Container ke andar working directory
WORKDIR /app

# Pehle package.json copy karo
COPY package*.json ./

# Dependencies install karo
RUN npm install --production

# Baaki saara code copy karo
COPY . .

# Is port pe app chalega
EXPOSE 5000

# App start karo
CMD ["node", "server.js"]