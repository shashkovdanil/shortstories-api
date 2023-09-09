FROM oven/bun

WORKDIR /usr/src/app

COPY package*.json bun.lockb ./

RUN bun install

COPY . .

RUN bunx prisma generate

EXPOSE 4000

CMD [ "bun", "run", "start" ]
