FROM node:21-slim as build
WORKDIR /app
ENV NODE_ENV production
COPY package.json yarn.lock ./
RUN yarn set version stable
RUN yarn config set nodeLinker node-modules
RUN yarn
COPY . .
RUN yarn build-only

FROM nginx:latest
WORKDIR /www
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist .
ENV PORT 80
EXPOSE $PORT
CMD ["nginx", "-g", "daemon off;"]
