FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 4000

CMD npx hexo server -p ${PORT:-4000} -i 0.0.0.0
