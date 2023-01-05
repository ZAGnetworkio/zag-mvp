FROM node:gallium

WORKDIR /home/node/app

COPY . .

WORKDIR /home/node/app/apps/web
COPY ./apps/web/.env.example .env

RUN yarn install
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]