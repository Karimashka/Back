# FastAPI Backend Service

Backend-часть сервиса на FastAPI с Docker-контейнеризацией.

## Технологии

- Python 3.11
- FastAPI
- Uvicorn (ASGI-сервер)
- Docker + Docker Compose
- SQLAlchemy (для работы с БД)
- PostgreSQL (основная БД)
- Pydantic (валидация данных)
- Alembic (миграции БД, если используется)

## Требования

- Docker 20.10.0+
- Docker Compose 2.0.0+
- (Опционально) Python 3.11+ для локальной разработки

## Установка и запуск

### Сборка и запуск через Docker (рекомендуемый способ)

1. Склонируйте репозиторий:
   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
