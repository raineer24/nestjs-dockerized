# Specify Node Version and Image
# Name Image development (can be anything)
FROM node:14 

# Specify Working directory inside container
WORKDIR /ner/src/app

# Copy package-lock.json & package.json from host to inside container working directory
COPY package*.json ./

# Install deps inside container
RUN npm install



EXPOSE 3000



COPY . .

RUN npm run build

EXPOSE 8080

# run app
CMD [ "node", "dist/main"]