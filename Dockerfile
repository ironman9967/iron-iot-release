FROM node:8-slim

WORKDIR /app
ADD . /app

RUN npm i
RUN npm rebuild

ENV PORT 8090
ENV DOCKER TRUE
ENV REDIS_HOST redis-release

EXPOSE 8090

CMD ["node", "dist/index.js"]
