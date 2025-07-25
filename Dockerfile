# Используем официальный Python-образ
FROM python:3.11

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем зависимости
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем всё остальное
COPY . .

# Указываем порт (если нужно)
EXPOSE 8000

# Команда запуска сервера
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
