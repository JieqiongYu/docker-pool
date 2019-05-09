# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Copy [Path to folder to copy from on *your machine* relative to build context] [Place to copy stuff to inside *the container*]
COPY ./package.json ./

# Install some dependencies 
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]