FROM oven/bun

WORKDIR /usr/src/app

COPY package*.json bun.lockb ./

RUN bun install

COPY . .

ENV DATABASE_URL=postgres://prisma:prisma@localhost:5432/mydb

RUN bunx prisma generate

EXPOSE 4000

CMD [ "bun", "run", "index.ts" ]
