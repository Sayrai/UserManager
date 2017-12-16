# What parent image should be used?
FROM node

# Make a directory for our app
RUN mkdir -p /app
WORKDIR /app

# Copy Dependencies
COPY package.json /app/

RUN npm install

# Copy the app file
COPY . /app

# Make sure the container allows us to connect
EXPOSE 4200

# Let's go
CMD npm start