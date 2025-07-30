
FROM node:20-alpine AS builder
WORKDIR /app

RUN npm install -g pnpm

COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

COPY . .

RUN pnpm build

FROM node:20-alpine AS production
WORKDIR /app

COPY --from=builder /app/build ./build
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/pnpm-lock.yaml ./pnpm-lock.yaml

RUN npm install -g pnpm && pnpm install --prod --frozen-lockfile

EXPOSE 3000


ENV HOST="0.0.0.0"
CMD ["node", "build/index.js"]
