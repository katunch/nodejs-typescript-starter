FROM node:current-alpine AS builder
WORKDIR /usr/src/app
COPY package*.json .
COPY eslint* .
RUN npm ci

COPY tsconfig.json .
COPY src src
RUN npm run build


FROM node:current-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
RUN chown node:node .
USER node
COPY package.json .
RUN npm install --production
COPY --from=builder /usr/src/app/dist/ dist/
EXPOSE 3000
ENTRYPOINT [ "node", "dist/app.js" ]

