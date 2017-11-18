FROM mhart/alpine-node:6

WORKDIR /app
COPY . .

RUN npm install
RUN npm run lint
RUN npm run ci

EXPOSE 1337
CMD ["node", "index.js"]
