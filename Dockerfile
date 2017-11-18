# base image with just our source files
FROM mhart/alpine-node:6 as BASE
WORKDIR /app
COPY . .

# test image installs development dependencies
# and runs testing commands
FROM BASE as TEST
RUN npm install
RUN npm run lint
RUN npm run ci

# final production image
FROM BASE as PROD
EXPOSE 1337
CMD ["node", "index.js"]
