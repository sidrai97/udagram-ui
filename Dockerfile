FROM node:13

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install -g @angular/cli

# Copy app source
COPY . .

# Bind the port that the image will run on
EXPOSE 4200

# Define the Docker image's behavior at runtime
CMD ["ng", "serve"]
