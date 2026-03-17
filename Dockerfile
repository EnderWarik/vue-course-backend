FROM node:20-alpine

WORKDIR /app

RUN npm install -g json-server@1

COPY db.json /app/db.json

EXPOSE 3000

CMD ["json-server", "--host", "0.0.0.0", "--port", "3000", "--watch", "db.json"]
