FROM node:18-alpine

# 创建工作目录 app
WORKDIR /app

# 复制 package.json pnpm-lock.yaml 到 /app
COPY package.json ./
COPY pnpm-lock.yaml ./

RUN npm install pnpm -g

RUN pnpm install

# 当前代码 放入 /app
COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]