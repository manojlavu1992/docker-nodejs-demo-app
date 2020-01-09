#Base image where your code in containeriazed.
FROM alpine

#Mention yourself as maintainer as this Dockerfile
LABEL maintainer=<Manoj Kumar Lavu "manojlavu@gmail.com">

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install
RUN npm audit fix

EXPOSE 8080

#ENTRYPOINT ["node", "./app.js"]
