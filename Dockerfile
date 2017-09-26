FROM node:8-slim

WORKDIR /app
ADD . /app

RUN npm i
RUN npm rebuild

ENV PORT 8082
ENV DOCKER TRUE
ENV REDIS_HOST redis-release

EXPOSE 8082

CMD ["node", "dist/index.js"]
