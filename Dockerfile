ARG NODE_VERSION=20.9.0

FROM node:${NODE_VERSION}-alpine

ENV NODE_ENV production

WORKDIR /app

COPY . .

EXPOSE 3000

RUN npm ci
RUN npm run build

CMD ["npm", "start"]