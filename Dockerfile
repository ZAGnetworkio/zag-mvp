FROM node:gallium

WORKDIR /home/node/app

COPY . .

WORKDIR /home/node/app/apps/web
COPY ./apps/web/.env.example .env

RUN yarn install

EXPOSE 4783

CMD ["yarn", "dev"]
