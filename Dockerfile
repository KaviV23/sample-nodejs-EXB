FROM node:23-alpine3.20
WORKDIR /app

COPY . .
RUN npm i
EXPOSE 3000

RUN adduser -D app
USER app

CMD ["node", "index.js"]
