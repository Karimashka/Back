# Stage 1: билд фронта
FROM node:18 AS build

WORKDIR /app

# Копируем package.json и устанавливаем зависимости
COPY package*.json ./
RUN npm install

# Копируем остальной код и билдим
COPY . .
RUN npm run build

# Stage 2: отдача через nginx
FROM nginx:alpine

# Копируем билд-файлы из предыдущего этапа
COPY --from=build /app/dist /usr/share/nginx/html

# Копируем свой nginx.conf (если есть)
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
