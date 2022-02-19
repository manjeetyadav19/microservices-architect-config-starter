FROM node:8
MAINTAINER manjeetyadav19@gmail.com manjeet yadav


WORKDIR /app
COPY . .

RUN npm install express
RUN npm install

EXPOSE 8080

#Runs in development Mode
CMD ["npm", "start"]