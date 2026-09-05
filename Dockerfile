FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --production
COPY . .

ENV PORT=8080        # ← 兜底：平台没注入 PORT 时监听 8080（PaaS 最常用）
EXPOSE 8080

CMD ["node", "index.js"]
