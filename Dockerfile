FROM node:13

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install
#RUN npm install @angular/cli@9.0.0 
#RUN npm install @angular/compiler-cli@9.0.0 
#RUN npm install @angular/compiler@9.0.0
RUN npm install -g ionic

# Copy app source
COPY . .

RUN ionic build

# Bind the port that the image will run on
EXPOSE 8100

# Define the Docker image's behavior at runtime
CMD ["ionic", "serve"]
