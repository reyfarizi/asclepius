FROM node:16
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV APP_ENV=production
ENV APP_PORT=3000
ENV MODEL_URL="https://storage.googleapis.com/asclepius-reihan/model-in-prod/model.json"
ENV PROJECT_ID="submissionmlgc-reihan"

CMD [ "npm", "start" ]

EXPOSE 3000