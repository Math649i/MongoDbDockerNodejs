# Brug Node.js base image
FROM node:18

# Sæt arbejdsdirectory i containeren
WORKDIR /app

# Kopier og installer afhængigheder
COPY package*.json ./
RUN npm install

# Kopier resten af projektfilerne
COPY . .

# Eksponér porten og start serveren
EXPOSE 3000
CMD ["node", "app.js"]
