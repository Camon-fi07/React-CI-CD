FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . /app
RUN npm install
RUN npm run build
EXPOSE 80
CMD ["npm", "run", "preview"]