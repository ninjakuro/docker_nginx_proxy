FROM node:21-slim as build
WORKDIR /app
#ENV NODE_ENV production
COPY package.json yarn.lock ./
RUN yarn set version stable
RUN yarn config set nodeLinker node-modules
RUN yarn
COPY . .
RUN yarn build

FROM node:21-slim
WORKDIR /app
COPY --from=build /app .
#ENV NODE_ENV production
ENV PORT 3000
EXPOSE $PORT
CMD ["node", "dist/main.js"]

