   # Use an official Node.js runtime as a parent image
   FROM node:18

   # Set the working directory
   WORKDIR /app

   # Copy package.json and yarn.lock
   COPY package.json yarn.lock ./

   # Install dependencies
   RUN yarn install

   # Copy the rest of the application code
   COPY . .

   # Build the app
   RUN yarn build

   # Expose the port the app runs on
   EXPOSE 3000

   # Define the command to run the app
   CMD ["yarn", "start"]
