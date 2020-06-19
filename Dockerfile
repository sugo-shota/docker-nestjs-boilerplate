FROM node:12-alpine

RUN npm i -g @nestjs/cli
WORKDIR /application
COPY src/ ./
COPY *.json/ ./

RUN npm i && npm run build

EXPOSE 3000

CMD ["npm", "run", "start:prod"]