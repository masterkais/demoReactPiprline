FROM node:14.18.1-alpine3.11
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
RUN npm install --silent
RUN npm install react-scripts@5.0.1
COPY . ./
CMD ["npm","start"]

