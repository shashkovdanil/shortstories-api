FROM oven/bun:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN bun install

COPY . .

EXPOSE 4000

CMD [ "bun", "run", "index.ts" ]
