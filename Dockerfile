FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install -g serve jest sonarlint

COPY . .

RUN npm run build

EXPOSE 5000

# Command to run the web server
CMD ["serve", "-s", "build"]
