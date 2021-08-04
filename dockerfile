FROM node:12.18.1
WORKDIR /app
COPY package.json package.json
RUN npm install
COPY . .
CMD [ "node", "node_server.js" ]
